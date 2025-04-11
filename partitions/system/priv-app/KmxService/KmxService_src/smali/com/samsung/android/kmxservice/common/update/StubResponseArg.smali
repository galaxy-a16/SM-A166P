.class public abstract Lcom/samsung/android/kmxservice/common/update/StubResponseArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$AppId;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ContentSize;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ProductId;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ProductName;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultCode;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ServerType;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$VersionCode;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$VersionName;,
        Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;->Companion:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;->key:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;->key:Ljava/lang/String;

    return-object p0
.end method
