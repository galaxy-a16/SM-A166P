.class public final Lkotlinx/coroutines/scheduling/e;
.super Lkotlinx/coroutines/scheduling/h;
.source "SourceFile"


# static fields
.field public static final d:Lkotlinx/coroutines/scheduling/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/e;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/e;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/e;->d:Lkotlinx/coroutines/scheduling/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget v0, Lkotlinx/coroutines/scheduling/k;->b:I

    sget v1, Lkotlinx/coroutines/scheduling/k;->c:I

    sget-wide v2, Lkotlinx/coroutines/scheduling/k;->d:J

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlinx/coroutines/scheduling/h;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
