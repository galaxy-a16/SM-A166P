.class public final Lcom/android/server/apphibernation/AppHibernationService$LocalService;
.super Lcom/android/server/apphibernation/AppHibernationManagerInternal;
.source "AppHibernationService.java"


# instance fields
.field public final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;-><init>()V

    .line 810
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    return-void
.end method


# virtual methods
.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 815
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOatArtifactDeletionEnabled()Z
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {p0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$misOatArtifactDeletionEnabled(Lcom/android/server/apphibernation/AppHibernationService;)Z

    move-result p0

    return p0
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    return-void
.end method
