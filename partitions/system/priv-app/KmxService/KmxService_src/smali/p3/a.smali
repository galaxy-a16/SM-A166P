.class public final Lp3/a;
.super Lc3/i;
.source "SourceFile"

# interfaces
.implements Lo3/c;


# instance fields
.field public final A:Z

.field public final B:Lc3/f;

.field public final C:Landroid/os/Bundle;

.field public final D:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc3/f;Landroid/os/Bundle;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/f;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc3/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc3/f;Lb3/d;Lb3/i;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp3/a;->A:Z

    iput-object p3, p0, Lp3/a;->B:Lc3/f;

    iput-object p4, p0, Lp3/a;->C:Landroid/os/Bundle;

    iget-object p1, p3, Lc3/f;->g:Ljava/lang/Integer;

    iput-object p1, p0, Lp3/a;->D:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final b(Lp3/e;)V
    .locals 7

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lp3/a;->B:Lc3/f;

    iget-object v2, v2, Lc3/f;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "<<default account>>"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc3/e;->c:Landroid/content/Context;

    invoke-static {v3}, Ly2/a;->a(Landroid/content/Context;)Ly2/a;

    move-result-object v3

    const-string v4, "defaultGoogleSignInAccount"

    iget-object v5, v3, Ly2/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v6, v3, Ly2/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v6, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "googleSignInAccount:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Ly2/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v3, v3, Ly2/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v3, :cond_2

    :try_start_6
    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_7
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :catch_0
    :cond_2
    :goto_1
    move-object v3, v0

    :goto_2
    new-instance v4, Lc3/t;

    iget-object v5, p0, Lp3/a;->D:Ljava/lang/Integer;

    invoke-static {v5}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    invoke-direct {v4, v6, v2, v5, v3}, Lc3/t;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lc3/e;->o()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lp3/f;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Ll3/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Ll3/b;->a:I

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x4f45

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/annotation/i0;->O(Landroid/os/Parcel;I)I

    move-result v3

    invoke-static {v2, v1, v1}, Lcom/fasterxml/jackson/annotation/i0;->I(Landroid/os/Parcel;II)V

    const/4 v5, 0x0

    invoke-static {v2, v6, v4, v5}, Lcom/fasterxml/jackson/annotation/i0;->K(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/annotation/i0;->Q(Landroid/os/Parcel;I)V

    move-object v3, p1

    check-cast v3, Lp3/d;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    iget-object p0, p0, Ll3/a;->d:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {p0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p0

    const-string v2, "SignInClientImpl"

    const-string v3, "Remote service probably died when signIn is called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    new-instance v3, Lp3/i;

    new-instance v4, La3/b;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v0}, La3/b;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v3, v1, v4, v0}, Lp3/i;-><init>(ILa3/b;Lc3/u;)V

    check-cast p1, Lb3/z;

    new-instance v0, Landroidx/appcompat/widget/k;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1, v3}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Lb3/z;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    return-void

    :catch_2
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v2, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Expecting a valid ISignInCallbacks"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()I
    .locals 0

    const p0, 0xbdfcb8

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lp3/a;->A:Z

    return p0
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lp5/c;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lc3/e;->j:Lc3/d;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc3/e;->v(ILandroid/os/IInterface;)V

    return-void
.end method

.method public final synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lp3/f;

    if-eqz v0, :cond_1

    check-cast p0, Lp3/f;

    goto :goto_0

    :cond_1
    new-instance p0, Lp3/f;

    invoke-direct {p0, p1}, Lp3/f;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final m()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lp3/a;->B:Lc3/f;

    iget-object v1, v0, Lc3/f;->d:Ljava/lang/String;

    iget-object v2, p0, Lc3/e;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lp3/a;->C:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iget-object v0, v0, Lc3/f;->d:Ljava/lang/String;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.signin.internal.ISignInService"

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.signin.service.START"

    return-object p0
.end method
