.class public final Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"


# instance fields
.field public keyboardLayoutName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public receiverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;
    .locals 6

    const/16 v0, 0x2f

    .line 1505
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 1506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 1509
    :cond_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v4, v1, 0x2

    if-lt v0, v4, :cond_2

    add-int/lit8 v4, v0, 0x1

    .line 1510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 1514
    :cond_1
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;

    invoke-direct {v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;-><init>()V

    const/4 v5, 0x0

    .line 1515
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    .line 1516
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    .line 1517
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v2
.end method
