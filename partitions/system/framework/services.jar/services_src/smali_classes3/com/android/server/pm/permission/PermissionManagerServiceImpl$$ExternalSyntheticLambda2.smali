.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/content/pm/PermissionInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->$r8$lambda$RHlUz984zt21vvAcHhXSJKr4v8w(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IILandroid/content/pm/PermissionInfo;)Z

    move-result p0

    return p0
.end method
