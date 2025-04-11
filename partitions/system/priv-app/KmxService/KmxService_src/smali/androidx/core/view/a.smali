.class public final Landroidx/core/view/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/view/c;


# direct methods
.method public constructor <init>(Landroidx/core/view/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/c;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1}, Landroidx/core/view/c;->b(Landroid/view/View;)Ld/s0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    new-instance v0, Lc0/l;

    invoke-direct {v0, p2}, Lc0/l;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/core/view/e0;

    const v2, 0x7f090240

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/core/view/e0;-><init>(II)V

    invoke-virtual {v1, p1}, Landroidx/core/view/g0;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    new-instance v1, Landroidx/core/view/e0;

    const/4 v4, 0x3

    const v5, 0x7f09023b

    invoke-direct {v1, v5, v4}, Landroidx/core/view/e0;-><init>(II)V

    invoke-virtual {v1, p1}, Landroidx/core/view/g0;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    invoke-static {p1}, Landroidx/core/view/x0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/core/view/e0;

    const v2, 0x7f090241

    const/16 v4, 0x40

    const/16 v5, 0x1e

    const/4 v6, 0x2

    invoke-direct {v1, v2, v4, v5, v6}, Landroidx/core/view/e0;-><init>(IIII)V

    invoke-virtual {v1, p1}, Landroidx/core/view/g0;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Lc0/h;->c(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/c;->d(Landroid/view/View;Lc0/l;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    const p0, 0x7f090239

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc0/f;

    invoke-virtual {v0, p1}, Lc0/l;->b(Lc0/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/c;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/c;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/c;->h(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/c;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
