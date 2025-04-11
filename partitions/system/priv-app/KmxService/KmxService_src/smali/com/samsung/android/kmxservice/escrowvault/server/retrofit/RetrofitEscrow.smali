.class public Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_URL_ESCROW:Ljava/lang/String;

.field private static final ESCROW_PATH:Ljava/lang/String;

.field private static final PROD_BASE_URL_ESCROW:Ljava/lang/String;

.field private static final STG_BASE_URL_ESCROW:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;


# instance fields
.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/ev/"

    goto :goto_0

    :cond_0
    const-string v0, "/escrow/"

    :goto_0
    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->ESCROW_PATH:Ljava/lang/String;

    const-string v1, "https://api.stg.secknoxmatrix.com:443"

    invoke-static {v1, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->STG_BASE_URL_ESCROW:Ljava/lang/String;

    const-string v1, "https://api.knox-matrix.com:443"

    invoke-static {v1, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->PROD_BASE_URL_ESCROW:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->BASE_URL_ESCROW:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljc/b;

    invoke-direct {v0}, Ljc/b;-><init>()V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v2, "level"

    invoke-static {v1, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Ljc/b;->b:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance v1, Lokhttp3/a0;

    invoke-direct {v1}, Lokhttp3/a0;-><init>()V

    iget-object v2, v1, Lokhttp3/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/b0;

    invoke-direct {v0, v1}, Lokhttp3/b0;-><init>(Lokhttp3/a0;)V

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->BASE_URL_ESCROW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/b0;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->retrofit:Lretrofit2/Retrofit;

    const-class v0, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    return-object p0
.end method
