.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/y1;

.field public final synthetic b:Landroidx/fragment/app/y1;

.field public final synthetic c:Z

.field public final synthetic d:Ll/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/y1;Landroidx/fragment/app/y1;ZLl/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/y1;

    iput-object p2, p0, Landroidx/fragment/app/e;->b:Landroidx/fragment/app/y1;

    iput-boolean p3, p0, Landroidx/fragment/app/e;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/e;->d:Ll/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "$lastInViews"

    iget-object v1, p0, Landroidx/fragment/app/e;->d:Ll/b;

    invoke-static {v1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroidx/fragment/app/y1;

    iget-object v0, v0, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/e;->b:Landroidx/fragment/app/y1;

    iget-object v1, v1, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/Fragment;

    sget-object v2, Landroidx/fragment/app/k1;->a:Landroidx/fragment/app/p1;

    const-string v2, "inFragment"

    invoke-static {v0, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outFragment"

    invoke-static {v1, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/e;->c:Z

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt/p0;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lt/p0;

    :goto_0
    return-void
.end method
