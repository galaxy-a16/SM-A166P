.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$0ScfVrB_gI5N7WgFwnolioyCrzo(Lcom/android/server/pm/verify/domain/DomainVerificationService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object p0

    return-object p0
.end method
