.class public final Lv7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# instance fields
.field public a:I

.field public final synthetic b:Lv7/i;


# direct methods
.method public constructor <init>(Lv7/i;)V
    .locals 0

    iput-object p1, p0, Lv7/h;->b:Lv7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lv7/h;->a:I

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 0

    const/16 p0, 0x4551

    return p0
.end method

.method public final estimateSize()J
    .locals 2

    iget p0, p0, Lv7/h;->a:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lv7/h;->tryAdvance(Ljava/util/function/Consumer;)Z

    return-void
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    iget p0, p0, Lv7/h;->a:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lv7/h;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lv7/h;->b:Lv7/i;

    iget-object v0, v0, Lv7/i;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput v1, p0, Lv7/h;->a:I

    return v2

    :cond_0
    return v1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
