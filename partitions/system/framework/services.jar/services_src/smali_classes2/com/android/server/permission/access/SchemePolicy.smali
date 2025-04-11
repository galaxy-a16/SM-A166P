.class public abstract Lcom/android/server/permission/access/SchemePolicy;
.super Ljava/lang/Object;
.source "AccessPolicy.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDecision(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)I
.end method

.method public abstract getObjectScheme()Ljava/lang/String;
.end method

.method public abstract getSubjectScheme()Ljava/lang/String;
.end method

.method public onAppIdAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onInitialized(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;I)V
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
.end method

.method public abstract setDecision(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;I)V
.end method
