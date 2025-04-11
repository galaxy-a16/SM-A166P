.class public final Ld/x0;
.super Landroidx/core/view/d1;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld/z0;


# direct methods
.method public synthetic constructor <init>(Ld/z0;I)V
    .locals 0

    iput p2, p0, Ld/x0;->a:I

    iput-object p1, p0, Ld/x0;->b:Ld/z0;

    invoke-direct {p0}, Landroidx/core/view/d1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Ld/x0;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Ld/x0;->b:Ld/z0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Ld/z0;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/z0;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Ld/z0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Ld/z0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Ld/z0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v1, p0, Ld/z0;->s:Lg/m;

    iget-object v0, p0, Ld/z0;->k:Lg/b;

    if-eqz v0, :cond_1

    iget-object v2, p0, Ld/z0;->j:Ld/y0;

    invoke-interface {v0, v2}, Lg/b;->c(Lg/c;)V

    iput-object v1, p0, Ld/z0;->j:Ld/y0;

    iput-object v1, p0, Ld/z0;->k:Lg/b;

    :cond_1
    iget-object p0, p0, Ld/z0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_2

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/m0;->c(Landroid/view/View;)V

    :cond_2
    return-void

    :goto_0
    iput-object v1, p0, Ld/z0;->s:Lg/m;

    iget-object p0, p0, Ld/z0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
