.class public final Lcom/android/server/dreams/DreamManagerService$DreamRecord;
.super Ljava/lang/Object;
.source "DreamManagerService.java"


# instance fields
.field public final canDoze:Z

.field public dozeScreenBrightness:I

.field public dozeScreenState:I

.field public isDozing:Z

.field public final isPreview:Z

.field public isWaking:Z

.field public final name:Landroid/content/ComponentName;

.field public final token:Landroid/os/Binder;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;IZZ)V
    .locals 1

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    const/4 v0, 0x0

    .line 1163
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 1164
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 1165
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    const/4 v0, -0x1

    .line 1166
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:I

    .line 1169
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 1170
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->userId:I

    .line 1171
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    .line 1172
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DreamRecord{token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
