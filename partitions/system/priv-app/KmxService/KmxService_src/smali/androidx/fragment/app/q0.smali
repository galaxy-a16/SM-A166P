.class public final Landroidx/fragment/app/q0;
.super Landroidx/activity/s;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/y0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/q0;->a:Landroidx/fragment/app/y0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/activity/s;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/q0;->a:Landroidx/fragment/app/y0;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->y(Z)Z

    iget-object v0, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/q0;

    invoke-virtual {v0}, Landroidx/activity/s;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/y0;->O()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/y0;->g:Landroidx/activity/y;

    invoke-virtual {p0}, Landroidx/activity/y;->c()V

    :goto_0
    return-void
.end method
