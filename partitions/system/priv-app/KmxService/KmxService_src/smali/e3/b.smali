.class public final Le3/b;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;
.source "SourceFile"


# instance fields
.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le3/b;->p:I

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Landroid/os/Looper;Lc3/f;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/f;)Lc3/i;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Le3/b;->p:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p4}, Lcom/google/protobuf/n;->s(Lcom/google/android/gms/common/api/a;)V

    throw v0

    :pswitch_1
    move-object v1, p4

    check-cast v1, Lo3/a;

    new-instance v7, Lp3/a;

    iget-object v1, p3, Lc3/f;->g:Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    iget-object v5, p3, Lc3/f;->a:Landroid/accounts/Account;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp3/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc3/f;Landroid/os/Bundle;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/f;)V

    return-object v7

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    move-object v4, p4

    check-cast v4, Lc3/o;

    new-instance v7, Le3/d;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le3/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc3/f;Lc3/o;Lb3/d;Lb3/i;)V

    return-object v7

    :goto_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "buildClient must be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
