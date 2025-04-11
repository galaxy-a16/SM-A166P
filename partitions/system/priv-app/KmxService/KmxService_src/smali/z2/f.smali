.class public final synthetic Lz2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/a1;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lz2/f;->a:I

    .line 1
    iput-object p1, p0, Lz2/f;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lz2/f;->b:Z

    iput-object p3, p0, Lz2/f;->c:Ljava/lang/Object;

    iput-object p4, p0, Lz2/f;->d:Ljava/lang/Object;

    iput-object p5, p0, Lz2/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/i0;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lz2/f;->a:I

    .line 2
    iput-object p1, p0, Lz2/f;->f:Ljava/lang/Object;

    iput-object p2, p0, Lz2/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lz2/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Lz2/f;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Lz2/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;ZLd3/a;Ljava/lang/Object;I)V
    .locals 0

    .line 4
    iput p6, p0, Lz2/f;->a:I

    iput-object p1, p0, Lz2/f;->f:Ljava/lang/Object;

    iput-object p2, p0, Lz2/f;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lz2/f;->b:Z

    iput-object p4, p0, Lz2/f;->d:Ljava/lang/Object;

    iput-object p5, p0, Lz2/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz2/f;->a:I

    .line 3
    iput-object p1, p0, Lz2/f;->f:Ljava/lang/Object;

    iput-object p2, p0, Lz2/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Lz2/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Lz2/f;->e:Ljava/lang/Object;

    iput-boolean p5, p0, Lz2/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz2/f;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lz2/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lz2/f;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lz2/f;->b:Z

    iput-object p5, p0, Lz2/f;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lz2/f;->a:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lz2/f;->b:Z

    const/4 v3, 0x0

    iget-object v4, p0, Lz2/f;->e:Ljava/lang/Object;

    iget-object v5, p0, Lz2/f;->f:Ljava/lang/Object;

    iget-object v6, p0, Lz2/f;->d:Ljava/lang/Object;

    iget-object v7, p0, Lz2/f;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    check-cast v5, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, v5, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez p0, :cond_0

    iget-object p0, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Discarding data. Failed to send conditional user property to service"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    check-cast v7, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v7}, Lva/n;->i(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v6

    check-cast v3, Lcom/google/android/gms/measurement/internal/c;

    :goto_0
    invoke-virtual {v5, p0, v3, v7}, Lcom/google/android/gms/measurement/internal/c5;->o(Lcom/google/android/gms/measurement/internal/q2;Ld3/a;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c5;->v()V

    :goto_1
    return-void

    :pswitch_1
    check-cast v5, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, v5, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez p0, :cond_2

    iget-object p0, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Discarding data. Failed to send event to service"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    check-cast v7, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v7}, Lva/n;->i(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v6

    check-cast v3, Lcom/google/android/gms/measurement/internal/o;

    :goto_2
    invoke-virtual {v5, p0, v3, v7}, Lcom/google/android/gms/measurement/internal/c5;->o(Lcom/google/android/gms/measurement/internal/q2;Ld3/a;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c5;->v()V

    :goto_3
    return-void

    :pswitch_2
    check-cast v5, Lcom/google/android/gms/internal/measurement/a1;

    check-cast v7, Landroid/net/Uri;

    check-cast v6, Ljava/lang/String;

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    iget-object p0, v5, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    :try_start_0
    move-object v4, p0

    check-cast v4, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "Activity created with data \'referrer\' without required params"

    const-string v9, "utm_medium"

    const-string v10, "_cis"

    const-string v12, "utm_source"

    const-string v13, "utm_campaign"

    const-string v14, "gclid"

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    :try_start_1
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "utm_id"

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "dclid"

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "srsltid"

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_4
    move-object v4, v3

    goto :goto_5

    :cond_5
    const-string v5, "https://google.com/search?"

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/u5;->n0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "referrer"

    invoke-virtual {v4, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_5
    const-string v5, "_cmp"

    if-eqz v2, :cond_8

    :try_start_2
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/u5;->n0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v7, "intent"

    invoke-virtual {v2, v10, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    const-string v1, "_cer"

    const-string v10, "gclid=%s"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v1, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/n4;->n:Lcom/google/android/gms/measurement/internal/d4;

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_7

    :cond_9
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Activity created with referrer"

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->Y:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v4, :cond_a

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v1, v6, v5, v4}, Lcom/google/android/gms/measurement/internal/n4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/n4;->n:Lcom/google/android/gms/measurement/internal/d4;

    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/measurement/internal/d4;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_a
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Referrer does not contain valid parameters"

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/measurement/internal/n4;

    const-string v4, "auto"

    const-string v5, "_ldl"

    const/4 v7, 0x1

    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/n4;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    goto :goto_7

    :cond_b
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "utm_term"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "utm_content"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object v8, p0

    check-cast v8, Lcom/google/android/gms/measurement/internal/n4;

    const-string v9, "auto"

    const-string v10, "_ldl"

    const/4 v12, 0x1

    iget-object p0, v8, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/n4;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    goto :goto_7

    :cond_d
    check-cast p0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v8}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Throwable caught in handleReferrerForOnActivityCreated"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    :goto_7
    return-void

    :pswitch_3
    check-cast v5, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    move-object v10, v7

    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    iget-boolean v14, p0, Lz2/f;->b:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v13

    new-instance p0, Lcom/google/android/gms/measurement/internal/v4;

    move-object v8, p0

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/v4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;Z)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    check-cast v7, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    check-cast v6, Landroid/content/Intent;

    check-cast v4, Landroid/content/Context;

    check-cast v5, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    const-string p0, "wrapped_intent"

    invoke-virtual {v6, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v0, p0, Landroid/content/Intent;

    if-eqz v0, :cond_f

    move-object v3, p0

    check-cast v3, Landroid/content/Intent;

    :cond_f
    if-eqz v3, :cond_10

    invoke-static {v3}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->c(Landroid/content/Intent;)I

    move-result p0

    goto :goto_8

    :cond_10
    invoke-static {v4, v6}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    :goto_8
    if-eqz v2, :cond_11

    invoke-virtual {v5, p0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0

    :goto_9
    check-cast v5, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    move-object v14, v7

    check-cast v14, Lcom/google/android/gms/internal/measurement/i0;

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    iget-boolean v13, p0, Lz2/f;->b:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v12

    new-instance p0, Lcom/google/android/gms/measurement/internal/v4;

    move-object v8, p0

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/v4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;ZLcom/google/android/gms/internal/measurement/i0;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

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
