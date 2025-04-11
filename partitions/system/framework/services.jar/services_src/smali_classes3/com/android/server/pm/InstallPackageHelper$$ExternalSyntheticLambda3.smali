.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->$r8$lambda$LYxivbKedAJ3J6803MU2Lf8upVk(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Integer;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method
