.class public final Landroidx/activity/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/channels/y;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public final synthetic d:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/y;Landroid/view/View;Landroidx/activity/b0;Landroidx/activity/a0;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/c0;->a:Lkotlinx/coroutines/channels/y;

    iput-object p2, p0, Landroidx/activity/c0;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/activity/c0;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p4, p0, Landroidx/activity/c0;->d:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Landroidx/activity/c0;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroidx/activity/c0;->a:Lkotlinx/coroutines/channels/y;

    check-cast v1, Lkotlinx/coroutines/channels/x;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/x;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Landroidx/activity/c0;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p0, p0, Landroidx/activity/c0;->d:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/c0;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p0, p0, Landroidx/activity/c0;->d:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
