{*******************************************************}
{							                                          }
{       Delphi DicomVCL Component Library	            	}
{       DicomVCL include file				                    }
{                                                       }
{       Copyright (c) 1999,2008 by Jiawen Feng	      	}
{                                                       }
{*******************************************************}
unit OpenJpeg2000;

{$IFDEF FPC}
  { Free Pascal settings }
  {$MODE DELPHI}
  {$PACKRECORDS 8}
  {$PACKENUM 4}
{$ELSE}
  { Delphi settings }
  {$DEFINE DCC}
  {$ALIGN 8}
  {$MINENUMSIZE 4}
{$ENDIF}

interface

const
  OPENJPEG_VERSION = '1.2.0';

type
  Bool = ByteBool;
  Char = AnsiChar;

const
  { Maximum allowed size for filenames }
  OPJ_PATH_LEN = 4096;

  { Number of maximum resolution level authorized }
  J2K_MAXRLVLS = 33;
  { Number of maximum sub-band linked to number of resolution level }
  J2K_MAXBANDS = 3 * J2K_MAXRLVLS - 2;

  JPWL_MAX_NO_TILESPECS = 16;
  JPWL_MAX_NO_PACKSPECS = 16;
  JPWL_MAX_NO_MARKERS = 512;
  JPWL_PRIVATEINDEX_NAME = 'jpwl_index_privatefilename';
  JPWL_EXPECTED_COMPONENTS = 3;
  JPWL_MAXIMUM_TILES = 8192;
  JPWL_MAXIMUM_HAMMING = 2;
  JPWL_MAXIMUM_EPB_ROOM = 65450;

{ ==========================================================
     enum definitions
  ========================================================== }

type
  { Rsiz Capabilities }
  RSIZ_CAPABILITIES = (
    STD_RSIZ = 0, { Standard JPEG2000 profile }
    CINEMA2K = 3, { Profile name for a 2K image }
    CINEMA4K = 4  { Profile name for a 4K image }
  );
  OPJ_RSIZ_CAPABILITIES = RSIZ_CAPABILITIES;

  { Digital cinema operation mode }
  CINEMA_MODE = (
    OFF = 0,         { Not Digital Cinema }
    CINEMA2K_24 = 1, { 2K Digital Cinema at 24 fps }
    CINEMA2K_48 = 2, { 2K Digital Cinema at 48 fps }
    CINEMA4K_24 = 3  { 4K Digital Cinema at 24 fps }
  );
  OPJ_CINEMA_MODE = CINEMA_MODE;

  { Progression order }
  PROG_ORDER = (
    PROG_UNKNOWN = -1, { place-holder }
    LRCP = 0,          { layer-resolution-component-precinct order }
    RLCP = 1,          { resolution-layer-component-precinct order }
    RPCL = 2,          { resolution-precinct-component-layer order }
    PCRL = 3,          { precinct-component-resolution-layer order }
    CPRL = 4);         { component-precinct-resolution-layer order }
  OPJ_PROG_ORDER = PROG_ORDER;

  { Supported image color spaces }
  COLOR_SPACE = (
    CLRSPC_UNKNOWN = -1, { place-holder }
    CLRSPC_SRGB = 1,     { sRGB }
    CLRSPC_GRAY = 2,     { grayscale }
    CLRSPC_SYCC = 3      { YUV }
    );
  OPJ_COLOR_SPACE = COLOR_SPACE;

  { Supported codec }
  CODEC_FORMAT = (
    CODEC_UNKNOWN = -1, { place-holder }
    CODEC_J2K = 0,      { JPEG-2000 codestream : read/write }
    CODEC_JPT = 1,      { JPT-stream (JPEG 2000, JPIP) : read only }
    CODEC_JP2 = 2);     { JPEG-2000 file format : read/write }
  OPJ_CODEC_FORMAT = CODEC_FORMAT;

  { Limit decoding to certain portions of the codestream. }
  LIMIT_DECODING = (
    NO_LIMITATION = 0,         { No limitation for the decoding. The entire codestream will de decoded }
    LIMIT_TO_MAIN_HEADER = 1,  { The decoding is limited to the Main Header }
    DECODE_ALL_BUT_PACKETS = 2 { Decode everything except the JPEG 2000 packets }
  );
  OPJ_LIMIT_DECODING = LIMIT_DECODING;


{ ==========================================================
     event manager typedef definitions
  ========================================================== }

  { Callback function prototype for events }
  opj_msg_callback = procedure(msg: PChar; client_data: Pointer); cdecl;
  { Message handler object }
  opj_event_mgr = record
    error_handler: opj_msg_callback;   { Error message callback if available, NULL otherwise }
    warning_handler: opj_msg_callback; { Warning message callback if available, NULL otherwise }
    info_handler: opj_msg_callback;    { Debug message callback if available, NULL otherwise }
  end;
  opj_event_mgr_t = opj_event_mgr;
  popj_event_mgr_t = ^opj_event_mgr_t;


{ ==========================================================
     codec typedef definitions
  ========================================================== }

  { Progression order changes }
  opj_poc = record
    resno0, compno0: Integer;
    layno1, resno1, compno1: Integer;
    layno0, precno0, precno1: Integer;
    prg1, prg: OPJ_PROG_ORDER;
    progorder: array[0..4] of Char;
    tile: Integer;
    tx0, tx1, ty0, ty1: Integer;
    layS, resS, compS, prcS: Integer;
    layE, resE, compE, prcE: Integer;
    txS, txE, tyS, tyE, dx, dy: Integer;
    lay_t, res_t, comp_t, prc_t, tx0_t, ty0_t: Integer;
  end;
  opj_poc_t = opj_poc;

  { Compression parameters }
  opj_cparameters = record
    tile_size_on: Bool;
    cp_tx0: Integer;
    cp_ty0: Integer;
    cp_tdx: Integer;
    cp_tdy: Integer;
    cp_disto_alloc: Integer;
    cp_fixed_alloc: Integer;
    cp_fixed_quality: Integer;
    cp_matrice: PInteger;
    cp_comment: PChar;
    csty: Integer;
    prog_order: OPJ_PROG_ORDER;
    POC: array[0..31] of opj_poc_t;
    numpocs: Integer;
    tcp_numlayers: Integer;
    tcp_rates: array[0..99] of Single;
    tcp_distoratio: array[0..99] of Single;
    numresolution: Integer;
    cblockw_init: Integer;
    cblockh_init: Integer;
    mode: Integer;
    irreversible: Integer;
    roi_compno: Integer;
    roi_shift: Integer;
    res_spec: Integer;
    prcw_init: array[0..J2K_MAXRLVLS - 1] of Integer;
    prch_init: array[0..J2K_MAXRLVLS - 1] of Integer;
    infile: array[0..OPJ_PATH_LEN - 1] of Char;
    outfile: array[0..OPJ_PATH_LEN - 1] of Char;
    index_on: Integer;
    index: array[0..OPJ_PATH_LEN - 1] of Char;
    image_offset_x0: Integer;
    image_offset_y0: Integer;
    subsampling_dx: Integer;
    subsampling_dy: Integer;
    decod_format: Integer;
    cod_format: Integer;
    jpwl_epc_on: Bool;
    jpwl_hprot_MH: Integer;
    jpwl_hprot_TPH_tileno: array[0..JPWL_MAX_NO_TILESPECS - 1] of Integer;
    jpwl_hprot_TPH: array[0..JPWL_MAX_NO_TILESPECS - 1] of Integer;
    jpwl_pprot_tileno: array[0..JPWL_MAX_NO_PACKSPECS - 1] of Integer;
    jpwl_pprot_packno: array[0..JPWL_MAX_NO_PACKSPECS - 1] of Integer;
    jpwl_pprot: array[0..JPWL_MAX_NO_PACKSPECS - 1] of Integer;
    jpwl_sens_size: Integer;
    jpwl_sens_addr: Integer;
    jpwl_sens_range: Integer;
    jpwl_sens_MH: Integer;
    jpwl_sens_TPH_tileno: array[0..JPWL_MAX_NO_TILESPECS - 1] of Integer;
    jpwl_sens_TPH: array[0..JPWL_MAX_NO_TILESPECS - 1] of Integer;
    cp_cinema: OPJ_CINEMA_MODE;
    max_comp_size: Integer;
    cp_rsiz: OPJ_RSIZ_CAPABILITIES;
    tp_on: Byte;
    tp_flag: Byte;
    tcp_mct: Byte;
  end;
  opj_cparameters_t = opj_cparameters;
  popj_cparameters_t = ^opj_cparameters_t;

  { Decompression parameters }
  opj_dparameters = record
    cp_reduce: Integer;
    cp_layer: Integer;
    infile: array[0..OPJ_PATH_LEN - 1] of Char;
    outfile: array[0..OPJ_PATH_LEN - 1] of Char;
    decod_format: Integer;
    cod_format: Integer;
    jpwl_correct: Bool;
    jpwl_exp_comps: Integer;
    jpwl_max_tiles: Integer;
    cp_limit_decoding: OPJ_LIMIT_DECODING;
  end;
  opj_dparameters_t = opj_dparameters;
  popj_dparameters_t = ^opj_dparameters_t;

  { Routines that are to be used by both halves of the library are declared
    to receive a Pointer to this structure.  There are no actual instances of
    opj_common_struct_t, only of opj_cinfo_t and opj_dinfo_t. }
  opj_common_struct = record
    event_mgr: popj_event_mgr_t;    { Pointer to the event manager }
    client_data: Pointer;           { Available for use by application }
    is_decompressor: Bool;          { So common code can tell which is which }
    codec_format: OPJ_CODEC_FORMAT; { selected codec }
    j2k_handle: Pointer;            { Pointer to the J2K codec }
    jp2_handle: Pointer;            { Pointer to the JP2 codec }
    mj2_handle: Pointer;
  end;
  opj_common_struct_t = opj_common_struct;
  opj_common_ptr = ^opj_common_struct_t;

  { Compression context info }
  opj_cinfo = record
    event_mgr: popj_event_mgr_t;
    client_data: Pointer;
    is_decompressor: Bool;
    codec_format: OPJ_CODEC_FORMAT;
    j2k_handle: Pointer;
    jp2_handle: Pointer;
    mj2_handle: Pointer;
  end;
  opj_cinfo_t = opj_cinfo;
  popj_cinfo_t = ^opj_cinfo_t;

  { Decompression context info }
  opj_dinfo = record
    event_mgr: popj_event_mgr_t;
    client_data: Pointer;
    is_decompressor: Bool;
    codec_format: OPJ_CODEC_FORMAT;
    j2k_handle: Pointer;
    jp2_handle: Pointer;
    mj2_handle: Pointer;
  end;
  opj_dinfo_t = opj_dinfo;
  popj_dinfo_t = ^opj_dinfo_t;

{ ==========================================================
     I/O stream typedef definitions
  ========================================================== }

const
  { Stream open flags. }
  { The stream was opened for reading. }
  OPJ_STREAM_READ = $0001;
  { The stream was opened for writing. }
  OPJ_STREAM_WRITE = $0002;

type
  { Byte input-output stream (CIO) }
  opj_cio = record
    cinfo: opj_common_ptr; { codec context }
    openmode: Integer;     { open mode (read/write) either OPJ_STREAM_READ or OPJ_STREAM_WRITE }
    buffer: PChar;         { Pointer to the start of the buffer }
    length: Integer;       { buffer size in bytes }
    start: PChar;          { Pointer to the start of the stream }
    end_: PChar;           { Pointer to the end of the stream }
    bp: PChar;             { Pointer to the current position }
  end;
  opj_cio_t = opj_cio;
  popj_cio_t = ^opj_cio_t;

{ ==========================================================
     image typedef definitions
  ========================================================== }

  { Defines a single image component }
  opj_image_comp = record
    dx: Integer;            { XRsiz: horizontal separation of a sample of ith component with respect to the reference grid  }
    dy: Integer;            { YRsiz: vertical separation of a sample of ith component with respect to the reference grid  }
    w: Integer;             { data width  }
    h: Integer;             { data height  }
    x0: Integer;            { x component offset compared to the whole image  }
    y0: Integer;            { y component offset compared to the whole image  }
    prec: Integer;          { precision  }
    bpp: Integer;           { image depth in bits  }
    sgnd: Integer;          { signed (1) / unsigned (0)  }
    resno_decoded: Integer; { number of decoded resolution  }
    factor: Integer;        { number of division by 2 of the out image compared to the original size of image  }
    data: PIntegerArray;    { image component data  }
  end;
  opj_image_comp_t = opj_image_comp;
  popj_image_comp_t = ^opj_image_comp_t;
  opj_image_comp_array = array[0..255] of opj_image_comp_t;
  popj_image_comp_array = ^opj_image_comp_array;

  { Defines image data and Characteristics }
  opj_image = record
    x0: Integer;                  { XOsiz: horizontal offset from the origin of the reference grid to the left side of the image area  }
    y0: Integer;                  { YOsiz: vertical offset from the origin of the reference grid to the top side of the image area  }
    x1: Integer;                  { Xsiz: width of the reference grid  }
    y1: Integer;                  { Ysiz: height of the reference grid  }
    numcomps: Integer;            { number of components in the image  }
    color_space: OPJ_COLOR_SPACE; { color space: sRGB, Greyscale or YUV  }
    comps: popj_image_comp_array; { image components  }
  end;
  opj_image_t = opj_image;
  popj_image_t = ^opj_image_t;

  { Component parameters structure used by the opj_image_create function }
  opj_image_comptparm = record
    dx: Integer;   { XRsiz: horizontal separation of a sample of ith component with respect to the reference grid  }
    dy: Integer;   { YRsiz: vertical separation of a sample of ith component with respect to the reference grid  }
    w: Integer;    { data width  }
    h: Integer;    { data height  }
    x0: Integer;   { x component offset compared to the whole image  }
    y0: Integer;   { y component offset compared to the whole image  }
    prec: Integer; { precision  }
    bpp: Integer;  { image depth in bits  }
    sgnd: Integer; { signed (1) / unsigned (0)  }
  end;
  opj_image_cmptparm_t = opj_image_comptparm;
  popj_image_cmptparm_t = ^opj_image_cmptparm_t;
  opj_image_cmptparm_array = array[0..255] of opj_image_cmptparm_t;
  popj_image_cmptparm_array = ^opj_image_cmptparm_array;

{ ==========================================================
     openjpeg version
  ========================================================== }


function opj_version: PChar; cdecl; external;

{ ==========================================================
     image functions definitions
  ========================================================== }
{ Create an image
  @param numcmpts number of components
  @param cmptparms components parameters
  @param clrspc image color space
  @return returns a new image structure if successful, returns NULL otherwise }
function opj_image_create(numcmpts: Integer; cmptparms: popj_image_cmptparm_t;
  clrspc: OPJ_COLOR_SPACE): popj_image_t; cdecl; external;

{ Deallocate any resources associated with an image
  @param image image to be destroyed }
procedure opj_image_destroy(image: popj_image_t); cdecl; external;

{ ==========================================================
     stream functions definitions
  ========================================================== }
{ Open and allocate a memory stream for read / write.
  On reading, the user must provide a buffer containing encoded data. The buffer will be
  wrapped by the returned CIO handle.
  On writing, buffer parameters must be set to 0: a buffer will be allocated by the library
  to contain encoded data.
  @param cinfo Codec context info
  @param buffer Reading: buffer address. Writing: NULL
  @param length Reading: buffer length. Writing: 0
  @return Returns a CIO handle if successful, returns NULL otherwise }
function opj_cio_open(cinfo: opj_common_ptr; buffer: PByte;
  length: Integer): popj_cio_t; cdecl; external;

{ Close and free a CIO handle
  @param cio CIO handle to free }
procedure opj_cio_close(cio: popj_cio_t); cdecl; external;

{ Get position in byte stream
  @param cio CIO handle
  @return Returns the position in bytes }
function cio_tell(cio: popj_cio_t): Integer; cdecl; external;

{ Set position in byte stream
  @param cio CIO handle
  @param pos Position, in number of bytes, from the beginning of the stream }
procedure cio_seek(cio: popj_cio_t; pos: Integer); cdecl; external;

{ ==========================================================
     event manager functions definitions
  ========================================================== }

function opj_set_event_mgr(cinfo: opj_common_ptr; event_mgr: popj_event_mgr_t;
  context: Pointer): popj_event_mgr_t; cdecl; external;

{ ==========================================================
     codec functions definitions
  ========================================================== }

{ Creates a J2K/JPT/JP2 decompression structure
  @param format Decoder to select
  @return Returns a handle to a decompressor if successful, returns NULL otherwise }
function opj_create_decompress(format: OPJ_CODEC_FORMAT): popj_dinfo_t; cdecl; external;

{ Destroy a decompressor handle
  @param dinfo decompressor handle to destroy }
procedure opj_destroy_decompress(dinfo: popj_dinfo_t); cdecl; external;

{ Set decoding parameters to default values
  @param parameters Decompression parameters }
procedure opj_set_default_decoder_parameters(parameters: popj_dparameters_t); cdecl; external ;

{ Setup the decoder decoding parameters using user parameters.
  Decoding parameters are returned in j2k->cp.
  @param dinfo decompressor handle
  @param parameters decompression parameters }
procedure opj_setup_decoder(dinfo: popj_dinfo_t; parameters: popj_dparameters_t); cdecl; external;

{ Decode an image from a JPEG-2000 codestream
  @param dinfo decompressor handle
  @param cio Input buffer stream
  @return Returns a decoded image if successful, returns NULL otherwise }
function opj_decode(dinfo: popj_dinfo_t; cio: popj_cio_t): popj_image_t; cdecl; external;

{ Creates a J2K/JP2 compression structure
  @param format Coder to select
  @return Returns a handle to a compressor if successful, returns NULL otherwise }
function opj_create_compress(format: OPJ_CODEC_FORMAT): popj_cinfo_t; cdecl; external;

{ Destroy a compressor handle
  @param cinfo compressor handle to destroy }
procedure opj_destroy_compress(cinfo: popj_cinfo_t); cdecl; external;

{ Set encoding parameters to default values, that means :
  <ul>
  <li>Lossless
  <li>1 tile
  <li>Size of precinct : 2^15 x 2^15 (means 1 precinct)
  <li>Size of code-block : 64 x 64
  <li>Number of resolutions: 6
  <li>No SOP marker in the codestream
  <li>No EPH marker in the codestream
  <li>No sub-sampling in x or y direction
  <li>No mode switch activated
  <li>Progression order: LRCP
  <li>No index file
  <li>No ROI upshifted
  <li>No offset of the origin of the image
  <li>No offset of the origin of the tiles
  <li>Reversible DWT 5-3
  </ul>
  @param parameters Compression parameters }
procedure opj_set_default_encoder_parameters(parameters: popj_cparameters_t); cdecl; external;

{ Setup the encoder parameters using the current image and using user parameters.
  @param cinfo compressor handle
  @param parameters compression parameters
  @param image input filled image }
procedure opj_setup_encoder(cinfo: popj_cinfo_t; parameters: popj_cparameters_t;
  image: popj_image_t); cdecl; external;

{ Encode an image into a JPEG-2000 codestream
  @param cinfo compressor handle
  @param cio Output buffer stream
  @param image Image to encode
  @param index Name of the index file if required, NULL otherwise
  @return Returns true if successful, returns false otherwise }
function opj_encode(cinfo: popj_cinfo_t; cio: popj_cio_t; image: popj_image_t;
  index: PChar): Bool; cdecl; external;

implementation

{$IF Defined(WIN32)}

  {$IF Defined(DCC)}
    { Delphi Win32 }
    { First link object files created with C++ Builder.}
    {$L J2KObjects\w32bor_pi.obj}
    {$L J2KObjects\w32bor_openjpeg.obj}
    {$L J2KObjects\w32bor_j2k_lib.obj}
    {$L J2KObjects\w32bor_event.obj}
    {$L J2KObjects\w32bor_cio.obj}
    {$L J2KObjects\w32bor_image.obj}
    {$L J2KObjects\w32bor_j2k.obj}
    {$L J2KObjects\w32bor_jp2.obj}
    {$L J2KObjects\w32bor_jpt.obj}
    {$L J2KObjects\w32bor_mqc.obj}
    {$L J2KObjects\w32bor_raw.obj}
    {$L J2KObjects\w32bor_bio.obj}
    {$L J2KObjects\w32bor_tgt.obj}
    {$L J2KObjects\w32bor_tcd.obj}
    {$L J2KObjects\w32bor_t1.obj}
    {$L J2KObjects\w32bor_dwt.obj}
    {$L J2KObjects\w32bor_t2.obj}
    {$L J2KObjects\w32bor_mct.obj}
   const
     { MS C Runtime library needed for importing std C functions.}
     MSCRuntimeLib = 'msvcrt.dll';
   var
      { Some unresolved external constants.}
      __turboFloat: Integer;
      _max_dble: Double;
      _streams: Pointer;

    { Internal OpenJpeg functions external declarations.
      Delphi yells 'unsatisfied external declaration' if they are not referenced here.}
    procedure mqc_create; cdecl; external;
    procedure raw_create; cdecl; external;
    procedure bio_create; cdecl; external;
    procedure opj_image_create0; cdecl; external;
    procedure opj_event_msg; cdecl; external;
    procedure opj_clock; cdecl; external;
    procedure cio_read; cdecl; external;
    procedure cio_write; cdecl; external;
    procedure cio_skip; cdecl; external;
    procedure bio_read; cdecl; external;
    procedure bio_write; cdecl; external;
    procedure cio_numbytesleft; cdecl; external;
    procedure cio_getbp; cdecl; external;
    procedure j2k_destroy_compress; cdecl; external;
    procedure tgt_create; cdecl; external;
    procedure tgt_destroy; cdecl; external;
    procedure mqc_bypass_enc; cdecl; external;
    procedure mqc_encode; cdecl; external;
    procedure mqc_decode; cdecl; external;
    procedure raw_decode; cdecl; external;
    procedure mqc_resetstates; cdecl; external;
    procedure mqc_setstate; cdecl; external;
    procedure mqc_init_enc; cdecl; external;
    procedure mqc_segmark_enc; cdecl; external;
    procedure mqc_flush; cdecl; external;
    procedure mqc_bypass_init_enc; cdecl; external;
    procedure mqc_numbytes; cdecl; external;
    procedure mqc_reset_enc; cdecl; external;
    procedure mqc_erterm_enc; cdecl; external;
    procedure mqc_init_dec; cdecl; external;
    procedure raw_init_dec; cdecl; external;
    procedure mqc_destroy; cdecl; external;
    procedure mqc_restart_init_enc; cdecl; external;
    procedure raw_destroy; cdecl; external;
    procedure tgt_reset; cdecl; external;
    procedure tgt_setvalue; cdecl; external;
    procedure bio_init_enc; cdecl; external;
    procedure bio_flush; cdecl; external;
    procedure bio_numbytes; cdecl; external;
    procedure bio_destroy; cdecl; external;
    procedure bio_init_dec; cdecl; external;
    procedure pi_create_encode; cdecl; external;
    procedure pi_initialise_encode; cdecl; external;
    procedure pi_create_decode; cdecl; external;
    procedure pi_next; cdecl; external;
    procedure pi_destroy; cdecl; external;
    procedure tgt_encode; cdecl; external;
    procedure tgt_decode; cdecl; external;
    procedure bio_inalign; cdecl; external;

    procedure _llmul; cdecl;
    asm
        { from Delphi's System.pas __llmul }
        push  edx
        push  eax

        mov   eax, [esp+16]
        mul   dword ptr [esp]
        mov   ecx, eax

        mov   eax, [esp+4]
        mul   dword ptr [esp+12]
        add   ecx, eax

        mov   eax, [esp]
        mul   dword ptr [esp+12]
        add   edx, ecx

        pop   ecx
        pop   ecx

        ret     8
    end;

    { C library imports }
    function malloc(size: Cardinal): Pointer; cdecl; external MSCRuntimeLib;
    function calloc(nelem, elsize: Cardinal): Pointer; cdecl; external MSCRuntimeLib;
    procedure free(ptr: Pointer); cdecl; external MSCRuntimeLib;
    function realloc(ptr: Pointer; size: Cardinal): Pointer; cdecl; external MSCRuntimeLib;
    function memset(s: Pointer; c, n: Cardinal): Pointer; cdecl; external MSCRuntimeLib;
    function memcpy(s1, s2: Pointer; n: Cardinal): Pointer; cdecl; external MSCRuntimeLib;
    function floor(const x: Double): Double; cdecl; external MSCRuntimeLib;
    function ceil(const num: Double): Double; cdecl; external MSCRuntimeLib;
    function pow(const base, exponent: Double): Double; cdecl; external MSCRuntimeLib;
    function printf(format: PChar): Integer; cdecl; varargs; external MSCRuntimeLib;
    function fprintf(f: Pointer; format: PChar): Integer; cdecl; varargs; external MSCRuntimeLib;
    function vsprintf(s, format: PChar): Integer; cdecl; varargs; external MSCRuntimeLib;
    function _ftol(x: Single): LongInt; cdecl; external MSCRuntimeLib;
    function wcscpy(s1, s2: PWideChar): PWideChar; cdecl; external MSCRuntimeLib;
    function strcpy(s1, s2: PChar): PChar; cdecl; external MSCRuntimeLib;
    function strlen(s: PChar): Integer; cdecl; external MSCRuntimeLib;
  {$ELSEIF Defined(FPC)}
    { Free Pascal Win32 }
    { Link OpenJpeg static library and C runtime library.}
    {$linklib libopenjpegwin32.a}
    {$linklib libcrtdll.a}
  {$IFEND}

{$ELSEIF Defined(LINUX)}
  {$IF Defined(FPC)}
    { Free Pascal Linux }
    { Link C runtime library.}
    {$LINKLIB stdc++}

    {$IF Defined(CPU86)}
      { Free Pascal Linux x86 }
      { Link OpenJpeg static library.}
      {$linklib libopenjpeglinx86.a}
    {$ELSEIF Defined(CPUX86_64)}
      { Free Pascal Linux x86_64 }
      { Link OpenJpeg static library.}
      {$linklib libopenjpeglinx86_64.a}
    {$ELSE}
      No support for this CPU architecture.
    {$IFEND}
  {$ELSE}
    No support for this compiler
  {$IFEND}
{$ELSE}
  No suppor for this OS
{$IFEND}

end.

