.class public final synthetic Landroidx/lifecycle/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/lifecycle/z0;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/z0;I)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/y0;->a:I

    iput-object p1, p0, Landroidx/lifecycle/y0;->b:Landroidx/lifecycle/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget v0, p0, Landroidx/lifecycle/y0;->a:I

    iget-object p0, p0, Landroidx/lifecycle/y0;->b:Landroidx/lifecycle/z0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Landroidx/lifecycle/z0;->a(Landroidx/lifecycle/z0;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/z0;->a(Landroidx/lifecycle/z0;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
