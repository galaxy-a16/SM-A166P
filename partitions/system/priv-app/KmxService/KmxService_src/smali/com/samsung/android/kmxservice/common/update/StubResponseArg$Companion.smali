.class public final Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/update/StubResponseArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final values()[Lcom/samsung/android/kmxservice/common/update/StubResponseArg;
    .locals 2

    const/16 p0, 0x9

    new-array p0, p0, [Lcom/samsung/android/kmxservice/common/update/StubResponseArg;

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$AppId;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$AppId;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultCode;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultCode;

    aput-object v1, p0, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;

    aput-object v1, p0, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$VersionCode;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$VersionCode;

    aput-object v1, p0, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$VersionName;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$VersionName;

    aput-object v1, p0, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ContentSize;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ContentSize;

    aput-object v1, p0, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ProductId;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ProductId;

    aput-object v1, p0, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ProductName;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ProductName;

    aput-object v1, p0, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ServerType;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ServerType;

    aput-object v1, p0, v0

    return-object p0
.end method
