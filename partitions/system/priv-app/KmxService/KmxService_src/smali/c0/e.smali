.class public final Lc0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final a:Lc0/d;


# direct methods
.method public constructor <init>(Lc0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/e;->a:Lc0/d;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lc0/e;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lc0/e;

    iget-object p0, p0, Lc0/e;->a:Lc0/d;

    iget-object p1, p1, Lc0/e;->a:Lc0/d;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc0/e;->a:Lc0/d;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object p0, p0, Lc0/e;->a:Lc0/d;

    check-cast p0, La5/a;

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    check-cast p0, Lo4/k;

    iget-object v0, p0, Lo4/k;->h:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    iget-object p0, p0, Lo4/o;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v1}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
