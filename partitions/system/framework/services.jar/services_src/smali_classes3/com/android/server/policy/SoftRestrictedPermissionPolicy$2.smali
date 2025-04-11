.class public Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "SoftRestrictedPermissionPolicy.java"


# instance fields
.field public final synthetic val$hasLegacyExternalStorage:Z

.field public final synthetic val$hasRequestedLegacyExternalStorage:Z

.field public final synthetic val$hasRequestedPreserveLegacyExternalStorage:Z

.field public final synthetic val$hasWriteMediaStorageGrantedForUid:Z

.field public final synthetic val$isForcedScopedStorage:Z

.field public final synthetic val$isWhiteListed:Z

.field public final synthetic val$shouldApplyRestriction:Z

.field public final synthetic val$targetSDK:I


# direct methods
.method public constructor <init>(ZIZZZZZZ)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    iput p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    iput-boolean p3, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    iput-boolean p4, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isForcedScopedStorage:Z

    iput-boolean p5, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasWriteMediaStorageGrantedForUid:Z

    iput-boolean p6, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasLegacyExternalStorage:Z

    iput-boolean p7, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    iput-boolean p8, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedPreserveLegacyExternalStorage:Z

    invoke-direct {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .locals 0

    .line 0
    const/16 p0, 0x57

    return p0
.end method

.method public mayAllowExtraAppOp()Z
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isForcedScopedStorage:Z

    if-eqz v0, :cond_1

    return v1

    .line 193
    :cond_1
    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    return v1

    .line 200
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasWriteMediaStorageGrantedForUid:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasLegacyExternalStorage:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .locals 3

    .line 207
    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->mayAllowExtraAppOp()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    if-eqz v0, :cond_1

    return v2

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isForcedScopedStorage:Z

    if-eqz v0, :cond_2

    return v2

    .line 224
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedPreserveLegacyExternalStorage:Z

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public mayGrantPermission()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
