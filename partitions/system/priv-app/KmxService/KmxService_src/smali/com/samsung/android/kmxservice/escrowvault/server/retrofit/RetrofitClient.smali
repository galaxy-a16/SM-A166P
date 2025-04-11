.class public Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_URL_AUTH:Ljava/lang/String; = "https://api.knox-matrix.com"

.field private static final PROD_BASE_URL_AUTH:Ljava/lang/String; = "https://api.knox-matrix.com"

.field private static final STG_BASE_URL_AUTH:Ljava/lang/String; = "https://api.stg.secknoxmatrix.com"

.field private static mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;


# instance fields
.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    const-string v1, "level"

    invoke-static {v0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://api.knox-matrix.com"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->mInstance:Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;
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

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    const-class v0, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    return-object p0
.end method
