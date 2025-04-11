.class public final Lokhttp3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lr/i;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final d:Lokhttp3/h;

.field public static final e:Lokhttp3/h;

.field public static final f:Lokhttp3/h;

.field public static final g:Lokhttp3/h;

.field public static final h:Lokhttp3/h;

.field public static final i:Lokhttp3/h;

.field public static final j:Lokhttp3/h;

.field public static final k:Lokhttp3/h;

.field public static final l:Lokhttp3/h;

.field public static final m:Lokhttp3/h;

.field public static final n:Lokhttp3/h;

.field public static final o:Lokhttp3/h;

.field public static final p:Lokhttp3/h;

.field public static final q:Lokhttp3/h;

.field public static final r:Lokhttp3/h;

.field public static final s:Lokhttp3/h;

.field public static final t:Lh5/d;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lokhttp3/h;->t:Lh5/d;

    new-instance v1, Lr/i;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lr/i;-><init>(I)V

    sput-object v1, Lokhttp3/h;->b:Lr/i;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lokhttp3/h;->c:Ljava/util/LinkedHashMap;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->d:Lokhttp3/h;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->e:Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->f:Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->g:Lokhttp3/h;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->h:Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->i:Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->j:Lokhttp3/h;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->k:Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->l:Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->m:Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->n:Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->o:Lokhttp3/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->p:Lokhttp3/h;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->q:Lokhttp3/h;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->r:Lokhttp3/h;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    move-result-object v1

    sput-object v1, Lokhttp3/h;->s:Lokhttp3/h;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, Lh5/d;->d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/h;->a:Ljava/lang/String;

    return-object p0
.end method
