.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/ArrayList;[I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;->f$2:[I

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/InstallPackageHelper;->$r8$lambda$SEkzESOZhTxGKQeRISZy3p6wVN4(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/ArrayList;[I)V

    return-void
.end method
