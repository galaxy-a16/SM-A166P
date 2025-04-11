.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/pkg/PackageState;

.field public final synthetic f$3:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/AppDataHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/pm/pkg/PackageState;

    iput-object p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    iput p5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/AppDataHelper;

    iget-boolean v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/pm/pkg/PackageState;

    iget-object v3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    iget v4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->$r8$lambda$x2ZTPRKH_pOtIqCp8f2v4-XnJRY(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;II)V

    return-void
.end method
