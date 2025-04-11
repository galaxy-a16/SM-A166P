.class public final Ld/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/SwitchPreference;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ld/f;->a:I

    .line 1
    invoke-direct {p0, p1, v0}, Ld/f;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ld/f;->a:I

    .line 2
    invoke-direct {p0, p1, v0}, Ld/f;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Ld/f;->a:I

    iput-object p1, p0, Ld/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ld/f;->a:I

    iget-object p0, p0, Ld/f;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/preference/Preference;->a()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    check-cast p0, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->h(Landroid/view/View;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->T:Landroidx/appcompat/widget/o4;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/o4;->b:Lh/p;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh/p;->collapseActionView()Z

    :cond_1
    return-void

    :pswitch_4
    check-cast p0, Ld/l;

    iget-object v1, p0, Ld/l;->h:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Ld/l;->j:Landroid/os/Message;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ld/l;->l:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Ld/l;->n:Landroid/os/Message;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ld/l;->p:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Ld/l;->r:Landroid/os/Message;

    if-eqz v1, :cond_4

    :goto_1
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    iget-object p1, p0, Ld/l;->b:Ld/n;

    const/4 v0, 0x1

    iget-object p0, p0, Ld/l;->J:Ld/j;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_2
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
