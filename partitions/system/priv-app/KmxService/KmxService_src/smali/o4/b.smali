.class public final synthetic Lo4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo4/o;


# direct methods
.method public synthetic constructor <init>(Lo4/o;I)V
    .locals 0

    iput p2, p0, Lo4/b;->a:I

    iput-object p1, p0, Lo4/b;->b:Lo4/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Lo4/b;->a:I

    iget-object p0, p0, Lo4/b;->b:Lo4/o;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lo4/d;

    invoke-virtual {p0}, Lo4/d;->u()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo4/d;->t(Z)V

    return-void

    :goto_0
    check-cast p0, Lo4/k;

    iput-boolean p2, p0, Lo4/k;->l:Z

    invoke-virtual {p0}, Lo4/o;->q()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo4/k;->t(Z)V

    iput-boolean p1, p0, Lo4/k;->m:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
