.class public Lcom/android/server/power/Notifier$Interactivity;
.super Ljava/lang/Object;
.source "Notifier.java"


# instance fields
.field public changeOffReason:I

.field public changeOnReason:I

.field public changeStartTime:J

.field public isChanging:Z

.field public isInteractive:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetchangeOffReason(Lcom/android/server/power/Notifier$Interactivity;)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetchangeOnReason(Lcom/android/server/power/Notifier$Interactivity;)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputchangeOffReason(Lcom/android/server/power/Notifier$Interactivity;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputchangeOnReason(Lcom/android/server/power/Notifier$Interactivity;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/Notifier$Interactivity-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    return-void
.end method
