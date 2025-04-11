.class public abstract Lc0/n;
.super Lc0/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ld/s0;)V
    .locals 0

    invoke-direct {p0, p1}, Lc0/m;-><init>(Ld/s0;)V

    return-void
.end method


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lc0/m;->a:Ld/s0;

    invoke-virtual {p0, p1}, Ld/s0;->j(I)Lc0/l;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lc0/l;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method
