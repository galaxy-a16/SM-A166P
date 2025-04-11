.class Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;
.super Lcom/android/internal/widget/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateVerifierBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-direct {p0}, Lcom/android/internal/widget/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;Lcom/android/internal/widget/b;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->lambda$requestSaGuid$0(Lcom/android/internal/widget/b;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;Ljava/lang/String;[B[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->lambda$updateVerifierInternal$1(Ljava/lang/String;[B[B[B)V

    return-void
.end method

.method private lambda$requestSaGuid$0(Lcom/android/internal/widget/b;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "KMX|EscrowAgent"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "saGuid is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getLockTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OtherType"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "ppp isn\'t set yet"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->u(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)V

    const-string p2, ""

    :cond_1
    check-cast p1, Lcom/android/internal/widget/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v1, "com.android.internal.widget.IUpdateVerifierCallback"

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/internal/widget/a;->c:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, p0, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$updateVerifierInternal$1(Ljava/lang/String;[B[B[B)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->UPDATE_VERIFIER:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->UPDATE_VERIFIER:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->requestChallenge(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    const-string v3, "challenge"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "updateVerifier challenge is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static {v4, v5, v6, v3, v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->C(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;[B[B[B[B)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->isEscrowVault2_0()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->d(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->I(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->f(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->k(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getESalt()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierIv()[B

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifier()[B

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getEVerifierEncKey()[B

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getSignVerifier()[B

    move-result-object v10

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentSakCert()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;->getAgentVerificationCert()Ljava/lang/String;

    move-result-object v13

    move-object v0, v2

    move-object v1, p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->updateVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateVerifierInternal([B[B[B)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->j(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->queryVerifierInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v6, "KMX|EscrowAgent"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "is_verifier_registered"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    const-string v10, "updateVerifierInternal"

    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v8, v10, v11}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->G(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "is_verifier_registered_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaGuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "verifier is registered. so try to update verifier"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KmxService"

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->m(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;)Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;

    move-result-object v8

    new-instance v10, Lcom/samsung/android/kmxservice/escrowvault/v;

    const/4 v6, 0x4

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/v;-><init>(Landroid/os/Binder;Ljava/lang/String;[BLjava/io/Serializable;Ljava/io/Serializable;I)V

    invoke-virtual {v8, v7, v9, v10}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->ensureAccessToken(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string v0, "verifier is not registered because pass onboarding is not yet."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "store verifierInfo"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v0, p1, p2, v2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->C(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;[B[B[B[B)Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-static {v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->H(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_3

    const-string v0, "persist.escrowvault.sa.signed"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public requestSaGuid(Lcom/android/internal/widget/b;)V
    .locals 3

    const-string v0, "KMX|EscrowAgent"

    const-string v1, "requestSaGuid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->this$0:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/d0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/d0;-><init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;Lcom/android/internal/widget/b;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0, v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->requestSAService(Landroid/content/Context;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V

    return-void
.end method

.method public updateVerifier([B[B)V
    .locals 2

    const-string v0, "updateVerifier"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "verifier is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->updateVerifierInternal([B[B[B)V

    return-void
.end method

.method public updateVerifierWithWk([B[B[B)V
    .locals 2

    const-string v0, "updateVerifierWithWk"

    const-string v1, "KMX|EscrowAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->updateVerifierInternal([B[B[B)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "verifier or wk is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
