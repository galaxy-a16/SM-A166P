.class public final Landroidx/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/activity/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/a;

    invoke-direct {v0}, Landroidx/activity/a;-><init>()V

    sput-object v0, Landroidx/activity/a;->a:Landroidx/activity/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFFI)Landroid/window/BackEvent;
    .locals 0

    new-instance p0, Landroid/window/BackEvent;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/BackEvent;-><init>(FFFI)V

    return-object p0
.end method

.method public final b(Landroid/window/BackEvent;)F
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p0

    return p0
.end method

.method public final c(Landroid/window/BackEvent;)I
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result p0

    return p0
.end method

.method public final d(Landroid/window/BackEvent;)F
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result p0

    return p0
.end method

.method public final e(Landroid/window/BackEvent;)F
    .locals 0

    const-string p0, "backEvent"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result p0

    return p0
.end method
