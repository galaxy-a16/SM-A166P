.class public final Lt/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Lt/x;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lt/x;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lt/k0;->d:Landroid/os/Bundle;

    iput-object p1, p0, Lt/k0;->c:Lt/x;

    iget-object v0, p1, Lt/x;->a:Landroid/content/Context;

    iput-object v0, p0, Lt/k0;->a:Landroid/content/Context;

    iget-object v1, p1, Lt/x;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lt/g0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget-object v2, p1, Lt/x;->s:Landroid/app/Notification;

    iget-wide v3, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v6, v2, Landroid/app/Notification;->ledOnMS:I

    iget v7, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v3, v4, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lt/x;->e:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lt/x;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lt/x;->g:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Lt/x;->i:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v3, p1, Lt/x;->h:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v3, :cond_4

    move-object v0, v5

    goto :goto_4

    :cond_4
    invoke-static {v3, v0}, Lx/d;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Lt/e0;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    invoke-static {v1, v5}, Lt/z;->c(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {v0, v7}, Lt/z;->d(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Lt/x;->j:I

    invoke-static {v0, v1}, Lt/z;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lt/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "android.support.allowGeneratedReplies"

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    iget-object v4, v1, Lt/p;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v4, :cond_5

    iget v4, v1, Lt/p;->e:I

    if-eqz v4, :cond_5

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iput-object v4, v1, Lt/p;->b:Landroidx/core/graphics/drawable/IconCompat;

    :cond_5
    iget-object v4, v1, Lt/p;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v4, :cond_6

    invoke-static {v4, v5}, Lx/d;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    goto :goto_6

    :cond_6
    move-object v4, v5

    :goto_6
    iget-object v6, v1, Lt/p;->f:Ljava/lang/CharSequence;

    iget-object v8, v1, Lt/p;->g:Landroid/app/PendingIntent;

    invoke-static {v4, v6, v8}, Lt/e0;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v4

    new-instance v6, Landroid/os/Bundle;

    iget-object v8, v1, Lt/p;->a:Landroid/os/Bundle;

    if-eqz v8, :cond_7

    invoke-direct {v6, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_7

    :cond_7
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :goto_7
    iget-boolean v8, v1, Lt/p;->c:Z

    invoke-virtual {v6, v3, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v4, v8}, Lt/f0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.semanticAction"

    invoke-virtual {v6, v3, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v4, v7}, Lt/h0;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    invoke-static {v4, v7}, Lt/i0;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    invoke-static {v4, v7}, Lt/j0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    const-string v3, "android.support.action.showsUserInterface"

    iget-boolean v1, v1, Lt/p;->d:Z

    invoke-virtual {v6, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v4, v6}, Lt/c0;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v4}, Lt/c0;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object v3

    invoke-static {v1, v3}, Lt/c0;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_8
    iget-object v0, p1, Lt/x;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lt/k0;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_9
    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Lt/x;->k:Z

    invoke-static {v0, v1}, Lt/a0;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Lt/x;->m:Z

    invoke-static {v0, v1}, Lt/c0;->i(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/c0;->g(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/c0;->j(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v7}, Lt/c0;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/d0;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Lt/x;->o:I

    invoke-static {v0, v1}, Lt/d0;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget v1, p1, Lt/x;->p:I

    invoke-static {v0, v1}, Lt/d0;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/d0;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1, v2}, Lt/d0;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lt/x;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v2, v1}, Lt/d0;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_8

    :cond_a
    iget-object v0, p1, Lt/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    iget-object v1, p1, Lt/x;->n:Landroid/os/Bundle;

    if-nez v1, :cond_b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Lt/x;->n:Landroid/os/Bundle;

    :cond_b
    iget-object v1, p1, Lt/x;->n:Landroid/os/Bundle;

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move v8, v7

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_10

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt/p;

    sget-object v11, Lt/l0;->a:Ljava/lang/Object;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iget-object v12, v10, Lt/p;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v12, :cond_d

    iget v12, v10, Lt/p;->e:I

    if-eqz v12, :cond_d

    invoke-static {v12}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    iput-object v12, v10, Lt/p;->b:Landroidx/core/graphics/drawable/IconCompat;

    :cond_d
    iget-object v12, v10, Lt/p;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result v12

    goto :goto_a

    :cond_e
    move v12, v7

    :goto_a
    const-string v13, "icon"

    invoke-virtual {v11, v13, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "title"

    iget-object v13, v10, Lt/p;->f:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v12, "actionIntent"

    iget-object v13, v10, Lt/p;->g:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v12, Landroid/os/Bundle;

    iget-object v13, v10, Lt/p;->a:Landroid/os/Bundle;

    if-eqz v13, :cond_f

    invoke-direct {v12, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_b

    :cond_f
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    :goto_b
    iget-boolean v13, v10, Lt/p;->c:Z

    invoke-virtual {v12, v3, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "extras"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v12, "remoteInputs"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v12, "showsUserInterface"

    iget-boolean v10, v10, Lt/p;->d:Z

    invoke-virtual {v11, v12, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "semanticAction"

    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v9, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    const-string v0, "invisible_actions"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p1, Lt/x;->n:Landroid/os/Bundle;

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Lt/x;->n:Landroid/os/Bundle;

    :cond_11
    iget-object v0, p1, Lt/x;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lt/k0;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_12
    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget-object v1, p1, Lt/x;->n:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lt/b0;->a(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/f0;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v7}, Lt/g0;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/g0;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v5}, Lt/g0;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lt/g0;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0, v7}, Lt/g0;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lt/x;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_13
    iget-object v0, p1, Lt/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    iget-boolean p1, p1, Lt/x;->r:Z

    invoke-static {v0, p1}, Lt/i0;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {p0, v5}, Lt/i0;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    return-void

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v5
.end method
