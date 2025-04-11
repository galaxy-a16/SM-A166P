.class public final Lv7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/s;


# static fields
.field public static final a:Lv7/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/k;

    invoke-direct {v0}, Lv7/k;-><init>()V

    sput-object v0, Lv7/k;->a:Lv7/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    const-string p0, "Consumer"

    invoke-static {p1, p0}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
