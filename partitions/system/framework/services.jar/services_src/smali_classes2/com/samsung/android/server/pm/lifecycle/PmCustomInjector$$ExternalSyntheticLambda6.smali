.class public final synthetic Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->$r8$lambda$ROfq-CL2M3GYiWJyopSl_h_8GU4(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    move-result-object p0

    return-object p0
.end method
