.class public Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->accept(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public getResult()Landroid/app/BackgroundStartPrivileges;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public prepare(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mUid:I

    sget-object p1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-void
.end method
