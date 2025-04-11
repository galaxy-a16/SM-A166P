.class public Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# instance fields
.field public final code:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$1:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V
    .locals 0

    .line 1187
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->this$1:Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    .line 1189
    iput-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    .line 1190
    iput p4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    return-void
.end method
