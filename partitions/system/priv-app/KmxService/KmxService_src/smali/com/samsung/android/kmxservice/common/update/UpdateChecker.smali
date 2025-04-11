.class public final Lcom/samsung/android/kmxservice/common/update/UpdateChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;

.field private static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/UpdateChecker;

.field private static final KMX_APP_NAME:Ljava/lang/String; = "KmxService"

.field private static final KMX_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.kmxservice"

.field private static final SC_PACKAGE:Ljava/lang/String; = "com.samsung.android.scloud"

.field private static final STUB_DETAIL_MAIN:Ljava/lang/String; = "samsungapps://ProductDetail/"

.field private static final STUB_DETAIL_MAIN_MULTI:Ljava/lang/String; = "samsungapps://MultiProductDetail/"

.field private static final TAG:Ljava/lang/String; = "UpdateChecker"

.field private static final UPDATE_AVAILABLE:Ljava/lang/String; = "2"


# instance fields
.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->Companion:Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/UpdateChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.kmxservice"

    invoke-static {v0}, Ll9/b;->o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->packages:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/kmxservice/common/update/UpdateChecker;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/UpdateChecker;

    return-object v0
.end method

.method private final fromStub(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/StubApi;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubApi;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/StubApi;->startStubUpdateCheck(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->saveResult(Lcom/samsung/android/kmxservice/common/update/StubResponseVo;)V

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->getServerData()Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string p2, "2"

    invoke-static {p0, p2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "UpdateChecker"

    const-string p2, "UPDATE_AVAILABLE"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->getServerData()Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p3
.end method

.method private final getDeepLinkIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->getDeeplinkQueryParam()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "samsungapps://ProductDetail/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "samsungapps://MultiProductDetail/com.samsung.android.scloud"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->getPackageVoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "appList"

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->getMultiAppList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_0
    const p0, 0x14000020

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private final getDeeplinkQueryParam()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/StubApi;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubApi;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/update/StubApi;->getPd()I

    move-result p0

    const-string v0, "/?source=KmxService&fsOrigin=stubUpdateCheck&fsUpdateType=ond&pd={"

    invoke-static {v0, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getMultiAppList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/common/update/StubResponseVo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->getServerData()Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getContentSize()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final getPackageVoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/common/update/StubResponseVo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->getStubResponseData(Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->getLastCheckTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final getStubResponseData(Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/update/StubResponseVo;
    .locals 6

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_latestStubResponse"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->getJson()Lkotlinx/serialization/json/b;

    move-result-object p1

    iget-object v0, p1, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    const-class v1, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    invoke-static {v1}, Lkotlin/jvm/internal/o;->b(Ljava/lang/Class;)Lkotlin/jvm/internal/q;

    move-result-object v1

    invoke-static {v0, v1}, Lv9/a;->Z(Lkotlinx/serialization/modules/b;Lkotlin/reflect/v;)Lkotlinx/serialization/c;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/json/b;->a(Lkotlinx/serialization/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    return-object p0

    :cond_1
    const-string p0, "UpdateChecker"

    const-string p1, "responseData is EMPTY "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;-><init>(JLcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;ILkotlin/jvm/internal/k;)V

    return-object p0
.end method

.method private final saveResult(Lcom/samsung/android/kmxservice/common/update/StubResponseVo;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->setLastCheckTime(J)V

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;->getServerData()Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseVo$ServerResponseVo;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_latestStubResponse"

    invoke-static {v0, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->getJson()Lkotlinx/serialization/json/b;

    move-result-object v1

    iget-object v2, v1, Lkotlinx/serialization/json/b;->b:Lkotlinx/serialization/modules/b;

    const-class v3, Lcom/samsung/android/kmxservice/common/update/StubResponseVo;

    invoke-static {v3}, Lkotlin/jvm/internal/o;->b(Ljava/lang/Class;)Lkotlin/jvm/internal/q;

    move-result-object v3

    invoke-static {v2, v3}, Lv9/a;->Z(Lkotlinx/serialization/modules/b;Lkotlin/reflect/v;)Lkotlinx/serialization/c;

    move-result-object v2

    new-instance v3, Lkotlinx/serialization/json/internal/k;

    invoke-direct {v3}, Lkotlinx/serialization/json/internal/k;-><init>()V

    :try_start_0
    invoke-static {v1, v3, v2, p1}, Lfc/e;->i(Lkotlinx/serialization/json/b;Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/c;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/k;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/k;->b()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/k;->b()V

    throw p0
.end method


# virtual methods
.method public final getUpdatablePackage(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->packages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/DeviceUtil;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/kmxservice/common/update/DeviceUtil;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packages.forEach. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UpdateChecker"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "packageName"

    invoke-static {v2, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->fromStub(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final openGalaxyStoreDeepLink(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageList"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->getDeepLinkIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
