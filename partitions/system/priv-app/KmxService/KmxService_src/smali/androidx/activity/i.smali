.class public final Landroidx/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/j;I)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Landroidx/activity/i;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/emoji2/text/j;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/activity/i;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "initCallback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/activity/i;->a:I

    iput-object p1, p0, Landroidx/activity/i;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/activity/i;->b:I

    iput-object p3, p0, Landroidx/activity/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x5

    .line 4
    iput v0, p0, Landroidx/activity/i;->a:I

    iput-object p1, p0, Landroidx/activity/i;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/i;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 5
    iput p4, p0, Landroidx/activity/i;->a:I

    iput-object p1, p0, Landroidx/activity/i;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/i;->d:Ljava/lang/Object;

    iput p3, p0, Landroidx/activity/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/activity/i;->a:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Landroidx/activity/i;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/activity/i;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/activity/i;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/activity/i;->b:I

    iput-object p3, p0, Landroidx/activity/i;->c:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "initCallbacks cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/activity/i;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/i;->c:Ljava/lang/Object;

    iget v3, p0, Landroidx/activity/i;->b:I

    iget-object p0, p0, Landroidx/activity/i;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, v2, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    check-cast p0, Landroid/app/Notification;

    invoke-virtual {v0, v3, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_1
    check-cast p0, Lj1/j;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Lj1/j;->a(Landroid/content/Intent;I)V

    return-void

    :pswitch_2
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v3, v2, :cond_0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/j;

    invoke-virtual {v2}, Landroidx/emoji2/text/j;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/j;

    invoke-virtual {v2}, Landroidx/emoji2/text/j;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_3
    check-cast p0, Lf9/b;

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lp9/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3}, Lp9/d;->c0(I)V

    :cond_2
    return-void

    :pswitch_4
    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    new-array v0, v0, [I

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    array-length v6, p0

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, p0, v1

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    check-cast v2, Lt/f;

    invoke-interface {v2, v3, p0, v0}, Lt/f;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :pswitch_5
    check-cast v2, Landroidx/activity/j;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    check-cast p0, Landroid/content/IntentSender$SendIntentException;

    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, v3, v1, p0}, Landroidx/activity/result/j;->a(IILandroid/content/Intent;)Z

    return-void

    :pswitch_6
    check-cast v2, Landroidx/activity/j;

    check-cast p0, Lp5/c;

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    iget-object v0, v2, Landroidx/activity/result/j;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, v2, Landroidx/activity/result/j;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/h;

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/activity/result/h;->a:Landroidx/activity/result/c;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v2, Landroidx/activity/result/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1, p0}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v1, v2, Landroidx/activity/result/j;->g:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/activity/result/j;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    return-void

    :goto_5
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v2, p0, v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I(Landroid/view/View;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
