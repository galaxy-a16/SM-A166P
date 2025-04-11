.class public final synthetic Lk5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lk5/b;->a:I

    iput-object p2, p0, Lk5/b;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lk5/b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lk5/b;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v0, p0, Lk5/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/installations/a;

    iget-boolean p0, p0, Lk5/b;->c:Z

    invoke-virtual {v0, p0}, Lcom/google/firebase/installations/a;->a(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lk5/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/installations/a;

    iget-boolean p0, p0, Lk5/b;->c:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v3}, Lv4/g;->a()V

    iget-object v3, v3, Lv4/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lp1/e;->a(Landroid/content/Context;)Lp1/e;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v4, v0, Lcom/google/firebase/installations/a;->c:Lp1/l;

    invoke-virtual {v4}, Lp1/l;->m()Ll5/a;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lp1/e;->l()V

    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTER_ERROR:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iget-object v5, v4, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    const/4 v6, 0x0

    if-ne v5, v3, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->UNREGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v5, v7, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/google/firebase/installations/a;->d:Lk5/i;

    invoke-virtual {p0, v4}, Lk5/i;->b(Ll5/a;)Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_4
    invoke-virtual {v0, v4}, Lcom/google/firebase/installations/a;->b(Ll5/a;)Ll5/a;

    move-result-object p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_5
    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/firebase/installations/a;->g(Ll5/a;)Ll5/a;

    move-result-object p0
    :try_end_3
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    monitor-enter v2

    :try_start_4
    iget-object v5, v0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v5}, Lv4/g;->a()V

    iget-object v5, v5, Lv4/g;->a:Landroid/content/Context;

    invoke-static {v5}, Lp1/e;->a(Landroid/content/Context;)Lp1/e;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v7, v0, Lcom/google/firebase/installations/a;->c:Lp1/l;

    invoke-virtual {v7, p0}, Lp1/l;->l(Ll5/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Lp1/e;->l()V

    :cond_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-enter v0

    :try_start_7
    iget-object v2, v0, Lcom/google/firebase/installations/a;->k:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v4, Ll5/a;->a:Ljava/lang/String;

    iget-object v4, p0, Ll5/a;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/google/firebase/installations/a;->k:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :goto_4
    monitor-exit v0

    sget-object v2, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iget-object v4, p0, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v4, v2, :cond_9

    move v2, v1

    goto :goto_5

    :cond_9
    move v2, v6

    :goto_5
    if-eqz v2, :cond_a

    iget-object v2, p0, Ll5/a;->a:Ljava/lang/String;

    monitor-enter v0

    :try_start_8
    iput-object v2, v0, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_a
    :goto_6
    iget-object v2, p0, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v2, v3, :cond_b

    move v3, v1

    goto :goto_7

    :cond_b
    move v3, v6

    :goto_7
    if-eqz v3, :cond_c

    new-instance p0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    goto :goto_9

    :cond_c
    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->NOT_GENERATED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-eq v2, v3, :cond_e

    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v2, v3, :cond_d

    goto :goto_8

    :cond_d
    move v1, v6

    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    new-instance p0, Ljava/io/IOException;

    const-string v1, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    invoke-virtual {v0, p0}, Lcom/google/firebase/installations/a;->h(Ll5/a;)V

    goto :goto_b

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p0

    if-eqz v5, :cond_10

    :try_start_9
    invoke-virtual {v5}, Lp1/e;->l()V

    :cond_10
    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :goto_9
    iget-object v1, v0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, v0, Lcom/google/firebase/installations/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/h;

    invoke-interface {v2, p0}, Lk5/h;->b(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_12
    monitor-exit v1

    :cond_13
    :goto_b
    return-void

    :catchall_4
    move-exception p0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    if-eqz v3, :cond_14

    :try_start_b
    invoke-virtual {v3}, Lp1/e;->l()V

    :cond_14
    throw p0

    :catchall_6
    move-exception p0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw p0

    :goto_c
    iget-object v0, p0, Lk5/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-boolean p0, p0, Lk5/b;->c:Z

    if-eqz p0, :cond_15

    sget-object p0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/v0;->c(Landroid/view/View;)Landroidx/core/view/e2;

    move-result-object p0

    if-eqz p0, :cond_15

    iget-object p0, p0, Landroidx/core/view/e2;->a:Landroidx/core/view/d2;

    invoke-virtual {p0}, Landroidx/core/view/d2;->t()V

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lt/h;->a:Ljava/lang/Object;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v2}, Lu/d;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
