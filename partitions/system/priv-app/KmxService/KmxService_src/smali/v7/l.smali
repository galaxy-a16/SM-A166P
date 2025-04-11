.class public final Lv7/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# static fields
.field public static final a:Lv7/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/l;

    invoke-direct {v0}, Lv7/l;-><init>()V

    sput-object v0, Lv7/l;->a:Lv7/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    const-string p0, "Consumer"

    invoke-static {p1, p0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    const-string p0, "Consumer"

    invoke-static {p1, p0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
