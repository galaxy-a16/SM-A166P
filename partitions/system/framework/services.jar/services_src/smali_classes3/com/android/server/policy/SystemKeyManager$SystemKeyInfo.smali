.class public final Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;
.super Ljava/lang/Object;
.source "SystemKeyManager.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final keyCode:I

.field public keyPressOld:Z

.field public press:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    .line 118
    iput p2, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    .line 119
    iput-object p3, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    .line 113
    iput-object p2, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    return p0
.end method

.method public getPress()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    return p0
.end method

.method public isKeyPressOld()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->isKeyPressOld()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " keyPressOld"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " press="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    invoke-static {v1}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " componentName="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
