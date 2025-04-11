.class public final Lg4/b;
.super Landroidx/work/impl/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/x;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(FF)F
    .locals 0

    sget-object p0, Lt3/a;->a:Landroid/view/animation/LinearInterpolator;

    const p0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p0

    const p0, 0x3ecccccd    # 0.4f

    add-float/2addr p1, p0

    return p1
.end method
