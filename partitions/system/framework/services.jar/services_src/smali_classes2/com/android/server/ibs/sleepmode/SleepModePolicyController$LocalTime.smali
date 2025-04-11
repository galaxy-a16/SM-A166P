.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_0

    .line 768
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    .line 769
    iput p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    return-void

    .line 765
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid minute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 763
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid hourOfDay: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;
    .locals 4

    const-wide/16 v0, 0x3c

    .line 785
    div-long v2, p0, v0

    long-to-int v2, v2

    .line 786
    rem-long/2addr p0, v0

    long-to-int p0, p0

    .line 787
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-direct {p1, v2, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 859
    :cond_1
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    .line 860
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    iget v3, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    if-eq v2, v3, :cond_2

    return v1

    .line 863
    :cond_2
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    iget p1, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;
    .locals 3

    .line 823
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 824
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    if-eqz p2, :cond_0

    .line 826
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/16 p2, 0xb

    .line 831
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-virtual {v0, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 832
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p2, 0x0

    .line 833
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 834
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 837
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    .line 838
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    :cond_1
    return-object v0
.end method

.method public getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 798
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 799
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x6

    .line 800
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    .line 802
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 803
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    .line 804
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 805
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 808
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    const/4 p1, -0x1

    .line 809
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 873
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 874
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 880
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->hourOfDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->minute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%02d:%02d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
