.class public abstract Landroidx/core/view/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/WeakHashMap;

.field public static final b:[I

.field public static final c:Landroidx/core/view/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/core/view/x0;->b:[I

    new-instance v0, Landroidx/core/view/d0;

    invoke-direct {v0}, Landroidx/core/view/d0;-><init>()V

    new-instance v0, Landroidx/core/view/f0;

    invoke-direct {v0}, Landroidx/core/view/f0;-><init>()V

    sput-object v0, Landroidx/core/view/x0;->c:Landroidx/core/view/f0;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090013
        0x7f090014
        0x7f09001f
        0x7f09002a
        0x7f09002d
        0x7f09002e
        0x7f09002f
        0x7f090030
        0x7f090031
        0x7f090032
        0x7f090015
        0x7f090016
        0x7f090017
        0x7f090018
        0x7f090019
        0x7f09001a
        0x7f09001b
        0x7f09001c
        0x7f09001d
        0x7f09001e
        0x7f090020
        0x7f090021
        0x7f090022
        0x7f090023
        0x7f090024
        0x7f090025
        0x7f090026
        0x7f090027
        0x7f090028
        0x7f090029
        0x7f09002b
        0x7f09002c
    .end array-data
.end method

.method public static a(Landroid/view/View;)Landroidx/core/view/i1;
    .locals 2

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/i1;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/i1;

    invoke-direct {v0, p0}, Landroidx/core/view/i1;-><init>(Landroid/view/View;)V

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Landroidx/core/view/e0;

    const v1, 0x7f09023c

    const/16 v2, 0x8

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/e0;-><init>(IIII)V

    invoke-virtual {v0, p0}, Landroidx/core/view/g0;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2

    const v0, 0x7f090239

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static d(Landroid/view/View;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/core/view/x0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Landroidx/core/view/l0;->a(Landroid/view/View;)I

    move-result v3

    const/16 v4, 0x20

    if-nez v3, :cond_4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, p1}, Landroidx/core/view/l0;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/x0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p0, p0, p1}, Landroidx/core/view/l0;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x800

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v0, p1}, Landroidx/core/view/l0;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/x0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/core/view/i0;->c(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p0, v2}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 2

    invoke-static {p0}, Landroidx/core/view/x0;->c(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc0/f;

    invoke-virtual {v1}, Lc0/f;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static f(Landroid/view/View;Lc0/f;Lc0/y;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lc0/f;->a()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/x0;->e(Landroid/view/View;I)V

    invoke-static {p0, v0}, Landroidx/core/view/x0;->d(Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    new-instance v7, Lc0/f;

    const/4 v2, 0x0

    iget v3, p1, Lc0/f;->b:I

    iget-object v6, p1, Lc0/f;->c:Ljava/lang/Class;

    const/4 v4, 0x0

    move-object v1, v7

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lc0/f;-><init>(Ljava/lang/Object;ILjava/lang/String;Lc0/y;Ljava/lang/Class;)V

    invoke-static {p0}, Landroidx/core/view/u0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroidx/core/view/a;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/core/view/a;

    iget-object p1, p1, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    goto :goto_0

    :cond_2
    new-instance p2, Landroidx/core/view/c;

    invoke-direct {p2, p1}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_3

    new-instance p1, Landroidx/core/view/c;

    invoke-direct {p1}, Landroidx/core/view/c;-><init>()V

    :cond_3
    invoke-static {p0, p1}, Landroidx/core/view/x0;->g(Landroid/view/View;Landroidx/core/view/c;)V

    invoke-virtual {v7}, Lc0/f;->a()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/x0;->e(Landroid/view/View;I)V

    invoke-static {p0}, Landroidx/core/view/x0;->c(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Landroidx/core/view/x0;->d(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method public static g(Landroid/view/View;Landroidx/core/view/c;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/u0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/core/view/c;

    invoke-direct {p1}, Landroidx/core/view/c;-><init>()V

    :cond_0
    invoke-static {p0}, Landroidx/core/view/i0;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroidx/core/view/c;->b:Landroidx/core/view/a;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static h(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 5

    new-instance v0, Landroidx/core/view/e0;

    const v1, 0x7f09023c

    const/16 v2, 0x8

    const/16 v3, 0x1c

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/e0;-><init>(IIII)V

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/g0;->c(Landroid/view/View;Ljava/lang/Object;)V

    sget-object v0, Landroidx/core/view/x0;->c:Landroidx/core/view/f0;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/core/view/f0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p0}, Landroidx/core/view/l0;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_1
    iget-object p1, v0, Landroidx/core/view/f0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/view/i0;->o(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_1
    return-void
.end method
