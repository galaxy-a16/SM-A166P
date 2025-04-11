.class public Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# instance fields
.field public final mCmdNumber:I

.field public final mCode:I

.field public mFdList:[Ljava/io/FileDescriptor;

.field public final mLogMessage:Ljava/lang/String;

.field public final mMessage:Ljava/lang/String;

.field public mParsed:[Ljava/lang/String;

.field public final mRawEvent:Ljava/lang/String;

.field public final mResponseCode:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    iput p2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    iput p3, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    iput-object p4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-void
.end method

.method public static isClassUnsolicited(I)Z
    .locals 1

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .locals 13

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    :try_start_0
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v7}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v6

    const/4 v8, 0x3

    if-nez v6, :cond_2

    array-length v6, v1

    const-string v9, "Insufficient arguemnts"

    if-lt v6, v3, :cond_1

    :try_start_1
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v10, v1, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v10, v5

    add-int/2addr v4, v10

    array-length v10, v1

    if-lt v10, v8, :cond_0

    :try_start_2
    aget-object v9, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v3, v5

    add-int/2addr v4, v3

    move v3, v9

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing responseCode"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing cmdNumber"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v3, -0x1

    move v6, v3

    :goto_0
    array-length v9, v1

    if-le v9, v8, :cond_3

    aget-object v9, v1, v8

    const-string/jumbo v10, "{{sensitive}}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v1, v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_3
    move-object v11, p0

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    move-object v5, v0

    move v8, v3

    move-object v10, p0

    move-object v12, p1

    invoke-direct/range {v5 .. v12}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "problem parsing code"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x22

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v6, v3

    :goto_1
    if-ge v3, v1, :cond_8

    const/16 v7, 0x20

    if-eqz v6, :cond_1

    move v8, v5

    goto :goto_2

    :cond_1
    move v8, v7

    :goto_2
    move v9, v3

    :goto_3
    if-ge v9, v1, :cond_3

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_3

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/2addr v9, v4

    goto :goto_3

    :cond_3
    if-le v9, v1, :cond_4

    move v9, v1

    :cond_4
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v3, v9

    if-nez v6, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :goto_4
    const-string v6, "\\\\"

    const-string v9, "\\"

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\\""

    const-string v9, "\""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const-string v7, " \""

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_6

    if-gt v7, v6, :cond_6

    add-int/lit8 v7, v7, 0x2

    move v6, v4

    move v3, v7

    goto :goto_1

    :cond_6
    if-le v6, v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    move v3, v6

    :cond_7
    move v6, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCmdNumber()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCmdNumber:I

    return p0
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mResponseCode:I

    return p0
.end method

.method public isClassClientError()Z
    .locals 1

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClassContinue()Z
    .locals 1

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClassOk()Z
    .locals 1

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClassUnsolicited()Z
    .locals 0

    iget p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mCode:I

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object p0
.end method
