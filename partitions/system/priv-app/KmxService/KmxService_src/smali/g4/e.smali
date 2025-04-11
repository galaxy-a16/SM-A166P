.class public final Lg4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg4/g;


# direct methods
.method public synthetic constructor <init>(Lg4/g;I)V
    .locals 0

    iput p2, p0, Lg4/e;->a:I

    iput-object p1, p0, Lg4/e;->b:Lg4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lg4/e;->a:I

    iget-object p0, p0, Lg4/e;->b:Lg4/g;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lg4/c;

    invoke-virtual {p1}, Lg4/c;->getItemData()Lh/p;

    move-result-object p1

    iget-object v0, p0, Lg4/g;->G:Lh/n;

    iget-object v1, p0, Lg4/g;->F:Lg4/i;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lh/n;->q(Landroid/view/MenuItem;Lh/b0;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lg4/g;->o0:Z

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lh/p;->isChecked()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lh/p;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lh/p;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object p1, p0, Lg4/g;->Q:Lh/n;

    iget-object v0, p0, Lg4/g;->I:Lh/l;

    iput-object v0, p1, Lh/n;->e:Lh/l;

    iget-object p0, p0, Lg4/g;->F:Lg4/i;

    invoke-virtual {p0, p1}, Lg4/i;->a(Lh/n;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
