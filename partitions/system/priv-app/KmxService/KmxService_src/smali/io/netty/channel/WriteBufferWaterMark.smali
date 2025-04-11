.class public final Lio/netty/channel/WriteBufferWaterMark;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

.field private static final DEFAULT_HIGH_WATER_MARK:I = 0x10000

.field private static final DEFAULT_LOW_WATER_MARK:I = 0x8000


# instance fields
.field private final high:I

.field private final low:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/netty/channel/WriteBufferWaterMark;

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    const v3, 0x8000

    invoke-direct {v0, v3, v1, v2}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    sput-object v0, Lio/netty/channel/WriteBufferWaterMark;->DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const-string p3, "low"

    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, "write buffer\'s high water mark cannot be less than  low water mark ("

    const-string v0, "): "

    .line 2
    invoke-static {p3, p1, v0, p2}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    iput p2, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    return-void
.end method


# virtual methods
.method public high()I
    .locals 0

    iget p0, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    return p0
.end method

.method public low()I
    .locals 0

    iget p0, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "WriteBufferWaterMark(low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", high: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
