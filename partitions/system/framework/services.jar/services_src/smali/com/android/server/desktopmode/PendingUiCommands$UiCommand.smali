.class public Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;
.super Ljava/lang/Object;
.source "PendingUiCommands.java"


# instance fields
.field public mCommand:I

.field public mRunnable:Ljava/lang/Runnable;

.field public mType:I

.field public mWhere:I


# direct methods
.method public static bridge synthetic -$$Nest$smhasSameNotificationId(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->hasSameNotificationId(II)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(IIILjava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    .line 37
    iput p2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    .line 38
    iput p3, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    .line 39
    iput-object p4, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static hasSameNotificationId(II)Z
    .locals 2

    .line 66
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->getNotificationId(I)I

    move-result p1

    .line 68
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->getNotificationId(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAnyType(I)Z
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isAnyWhere(I)Z
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSameTypeCategory(II)Z
    .locals 0

    sub-int/2addr p0, p1

    .line 51
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x64

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    check-cast p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 82
    iget v2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    iget v3, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iget v3, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    iget p1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isRemovableWith(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)Z
    .locals 2

    .line 43
    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    const/16 v1, 0x385

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iget v1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    if-eq v0, v1, :cond_1

    .line 45
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->isSameTypeCategory(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    invoke-static {v0}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->isAnyType(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    iget v1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    .line 46
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->hasSameNotificationId(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    iget p1, p1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    if-eq p0, p1, :cond_2

    .line 47
    invoke-static {p1}, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->isAnyWhere(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiCommand("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->commandToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    .line 95
    invoke-static {v2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    .line 96
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
