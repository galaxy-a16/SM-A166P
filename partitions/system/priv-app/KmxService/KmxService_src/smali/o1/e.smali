.class public final Lo1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lo1/e;->a:I

    iput-object p3, p0, Lo1/e;->c:Ljava/lang/Object;

    iput p1, p0, Lo1/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lo1/e;->a:I

    iget v1, p0, Lo1/e;->b:I

    iget-object p0, p0, Lo1/e;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->E0(I)V

    return-void

    :pswitch_1
    check-cast p0, Lb3/p;

    invoke-virtual {p0, v1}, Lb3/p;->i(I)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :goto_0
    check-cast p0, Lg4/c;

    sget-object v0, Lg4/c;->l0:[I

    invoke-virtual {p0, v1}, Lg4/c;->k(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
