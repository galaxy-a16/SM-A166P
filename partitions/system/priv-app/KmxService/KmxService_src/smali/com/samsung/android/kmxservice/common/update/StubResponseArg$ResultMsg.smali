.class public final Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;
.super Lcom/samsung/android/kmxservice/common/update/StubResponseArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/update/StubResponseArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultMsg"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/StubResponseArg$ResultMsg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "resultMsg"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/common/update/StubResponseArg;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/k;)V

    return-void
.end method
