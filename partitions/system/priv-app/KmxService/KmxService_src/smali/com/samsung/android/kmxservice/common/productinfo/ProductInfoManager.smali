.class public Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_UPDATE:Ljava/lang/String; = "com.samsung.android.scpm.product.UPDATE.f1gxtygekn"

.field public static final APP_ID:Ljava/lang/String; = "f1gxtygekn"

.field public static final EXTRA_MODEL_CODES:Ljava/lang/String; = "modelCodes"

.field public static final EXTRA_UN_REGISTERED:Ljava/lang/String; = "unregistered"

.field private static final ITEM_ID:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "KMX|ProductInfoManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScaProduct:Lfa/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mContext:Landroid/content/Context;

    new-instance v0, Lfa/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lfa/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    return-void
.end method

.method private initialize()V
    .locals 6

    const-string v0, "KMX|ProductInfoManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    invoke-virtual {v2}, Lh/e;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v3, v2, Lh/e;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialize : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lh/e;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lda/a;->a:Z

    if-eqz v4, :cond_0

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "receiverPackageName"

    invoke-virtual {v3, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v2, Lh/e;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0, v3}, Lh/e;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lj0/b;->a(Landroid/os/Bundle;)Lj0/b;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string v3, "filterId"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    new-instance p0, Lea/a;

    iget v3, v1, Lj0/b;->a:I

    iget v4, v1, Lj0/b;->b:I

    iget-object v1, v1, Lj0/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1}, Lea/a;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    iget-object v1, v2, Lh/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot register package : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lda/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lea/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There is an exception, please check  { "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    const v3, 0x55d4a80

    invoke-direct {v1, v2, v3, p0}, Lea/a;-><init>(IILjava/lang/String;)V

    move-object p0, v1

    :goto_0
    iget-object v1, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize rcode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lj0/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rmsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "Device doesn\'t support PKI service"

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private register()V
    .locals 3

    const-string v0, "register result : "

    const-string v1, "register"

    const-string v2, "KMX|ProductInfoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    invoke-virtual {v1}, Lh/e;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    invoke-virtual {p0}, Lh/e;->v()Lj0/b;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lj0/b;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string p0, "Device doesn\'t support PKI service"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resister failed!!! error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private requestPki([Ljava/lang/String;)V
    .locals 12

    const-string v0, "KMX|ProductInfoManager"

    const-string v1, "requestPki"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    invoke-virtual {v2}, Lh/e;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    iget-object v2, p0, Lh/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestPki : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lda/a;->a:Z

    if-eqz v3, :cond_0

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    new-instance p0, Lfa/a;

    const/4 v5, 0x2

    const v6, 0x55d4a80

    const-string v7, "There is no model codes."

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lfa/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "modelCodes"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lh/e;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v2}, Lh/e;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lfa/a;->e(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lfa/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lh/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot get pki from scpm : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lda/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lfa/a;->f(Ljava/lang/Exception;)Lfa/a;

    move-result-object p0

    :goto_0
    iget-object p1, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "requestPki rcode = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lj0/b;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rmsg = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj0/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "Device doesn\'t support PKI service"

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public getProductInfoFromCache(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoCache;->getProductInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->register()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->initialize()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->requestPki([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, "KMX|ProductInfoManager"

    const-string p1, "get product info from cache"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public handleResult([Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "KMX|ProductInfoManager"

    const-string v1, "handleResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "modelCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mScaProduct:Lfa/b;

    const-string v6, "2"

    const-string v7, "cannot get product Info: "

    iget-object v8, v5, Lh/e;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const-string v9, "getPki : "

    const-string v10, ", itemId : 2"

    invoke-static {v9, v4, v10}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lda/a;->a:Z

    if-eqz v9, :cond_0

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, v5, Lh/e;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lcom/hivemq/client/internal/mqtt/handler/auth/e;

    const/4 v10, 0x4

    invoke-direct {v9, v10, v5, v4}, Lcom/hivemq/client/internal/mqtt/handler/auth/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-boolean v10, Lda/a;->a:Z

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/hivemq/client/internal/mqtt/handler/auth/e;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lh/e;->u(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "token"

    iget-object v11, v5, Lh/e;->a:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    iget-object v12, v5, Lh/e;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12}, Lh3/a;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "modelCode"

    invoke-virtual {v9, v10, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_2

    const-string v6, "getLastError"

    iget-object v10, v5, Lh/e;->a:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10, v9}, Lh/e;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, v5, Lh/e;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "rcode"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "rmsg"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lda/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lfa/a;->e(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lfa/a;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v7, "getPki"

    iget-object v10, v5, Lh/e;->a:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10, v9}, Lh/e;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7, v6}, Lfa/a;->e(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lfa/a;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    iget-object v5, v5, Lh/e;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "cannot get product Info : "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lda/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lfa/a;->f(Ljava/lang/Exception;)Lfa/a;

    move-result-object v5

    :goto_1
    iget-object v6, v5, Lfa/a;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v4

    :cond_3
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;

    iget-object v9, v5, Lfa/a;->e:Ljava/lang/String;

    invoke-direct {v7, v6, v9}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoCache;->putProductInfoData(Ljava/lang/String;Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;)V

    iget-object v4, v5, Lfa/a;->g:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoManager;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lfa/a;->d:Ljava/lang/String;

    invoke-static {v6, v5, v4}, Lcom/samsung/android/kmxservice/common/productinfo/ProductImageFileUtils;->writeImageFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "file close error : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p0, "Can not update image files"

    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_5
    return-object v1
.end method
