.class public Lcom/android/server/pm/permission/CompatibilityPermissionInfo;
.super Ljava/lang/Object;
.source "CompatibilityPermissionInfo.java"


# static fields
.field public static final COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mSdkVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/server/pm/permission/CompatibilityPermissionInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    .line 82
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 84
    iput p2, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mSdkVersion:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/server/pm/permission/CompatibilityPermissionInfo;->mSdkVersion:I

    return p0
.end method
