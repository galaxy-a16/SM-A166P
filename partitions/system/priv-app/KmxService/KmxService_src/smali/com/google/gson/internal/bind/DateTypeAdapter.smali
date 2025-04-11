.class public final Lcom/google/gson/internal/bind/DateTypeAdapter;
.super Lcom/google/gson/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/i;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/gson/j;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/bind/DateTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/DateTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/DateTypeAdapter;->b:Lcom/google/gson/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/gson/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/DateTypeAdapter;->a:Ljava/util/ArrayList;

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v1, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v1, Lcom/google/gson/internal/f;->a:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM d, yyyy h:mm:ss a"

    invoke-direct {v1, v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Lt5/a;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lt5/a;->C0()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lt5/a;->y0()V

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lt5/a;->A0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/gson/internal/bind/DateTypeAdapter;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/google/gson/internal/bind/DateTypeAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto/16 :goto_9

    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    :try_start_3
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/text/ParsePosition;-><init>(I)V

    sget-object v0, Ls5/a;->a:Ljava/util/TimeZone;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v4, v0, 0x4

    invoke-static {v0, v4, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v0

    const/16 v5, 0x2d

    invoke-static {v5, v4, v1}, Ls5/a;->a(CILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v6, v4, 0x2

    invoke-static {v4, v6, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v4

    invoke-static {v5, v6, v1}, Ls5/a;->a(CILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v7, v6, 0x2

    invoke-static {v6, v7, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v6

    const/16 v8, 0x54

    invoke-static {v8, v7, v1}, Ls5/a;->a(CILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v7, :cond_4

    new-instance v5, Ljava/util/GregorianCalendar;

    sub-int/2addr v4, v2

    invoke-direct {v5, v0, v4, v6}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    goto/16 :goto_8

    :cond_4
    const/4 v9, 0x2

    const/16 v10, 0x2b

    const/16 v11, 0x5a

    if-eqz v8, :cond_f

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v7, 0x2

    invoke-static {v7, v8, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v7

    const/16 v12, 0x3a

    invoke-static {v12, v8, v1}, Ls5/a;->a(CILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v13, v8, 0x2

    invoke-static {v8, v13, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v8

    invoke-static {v12, v13, v1}, Ls5/a;->a(CILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v13, v13, 0x1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_e

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v11, :cond_e

    if-eq v12, v10, :cond_e

    if-eq v12, v5, :cond_e

    add-int/lit8 v5, v13, 0x2

    invoke-static {v13, v5, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v12

    const/16 v13, 0x3b

    if-le v12, v13, :cond_7

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_7

    const/16 v12, 0x3b

    :cond_7
    const/16 v13, 0x2e

    invoke-static {v13, v5, v1}, Ls5/a;->a(CILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v13, v5, 0x1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_9

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-lt v14, v15, :cond_a

    const/16 v15, 0x39

    if-le v14, v15, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    :cond_a
    :goto_1
    add-int/lit8 v14, v5, 0x3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v5, v14, v1}, Ls5/a;->b(IILjava/lang/String;)I

    move-result v15

    sub-int/2addr v14, v5

    if-eq v14, v2, :cond_c

    if-eq v14, v9, :cond_b

    goto :goto_2

    :cond_b
    mul-int/lit8 v15, v15, 0xa

    goto :goto_2

    :cond_c
    mul-int/lit8 v15, v15, 0x64

    :goto_2
    move v5, v13

    goto :goto_4

    :cond_d
    const/4 v15, 0x0

    goto :goto_4

    :cond_e
    move v5, v7

    move v7, v13

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v15, 0x0

    const/4 v12, 0x0

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v5, :cond_17

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    sget-object v13, Ls5/a;->a:Ljava/util/TimeZone;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v14, 0x5

    if-ne v9, v11, :cond_10

    add-int/2addr v5, v2

    goto/16 :goto_7

    :cond_10
    if-eq v9, v10, :cond_12

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_11

    goto :goto_5

    :cond_11
    :try_start_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid time zone indicator \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v14, :cond_13

    goto :goto_6

    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "00"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    const-string v10, "+0000"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    const-string v10, "+00:00"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_7

    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GMT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, ":"

    const-string v14, ""

    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_7

    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatching time zone indicator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " given, resolves to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_7
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v13}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v4, v2

    const/4 v0, 0x2

    invoke-virtual {v9, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {v9, v0, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v9, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v9, v0, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v9, v0, v15}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v5, v9

    :goto_8
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "No time zone indicator"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_1
    move-exception v0

    if-nez v1, :cond_18

    const/4 v4, 0x0

    goto :goto_a

    :cond_18
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1a
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to parse date ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v6, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v6
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    const-string v4, "Failed parsing \'"

    const-string v5, "\' as Date; at path "

    invoke-static {v4, v1, v5}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Lt5/a;->z(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final c(Lt5/b;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/Date;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lt5/b;->H()Lt5/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/DateTypeAdapter;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iget-object p0, p0, Lcom/google/gson/internal/bind/DateTypeAdapter;->a:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2}, Lt5/b;->h0(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
