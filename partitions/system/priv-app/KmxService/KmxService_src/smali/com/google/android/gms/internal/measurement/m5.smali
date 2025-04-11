.class public final Lcom/google/android/gms/internal/measurement/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/m5;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/b5;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/m5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/m5;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/m5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/b5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b5;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->a:Lcom/google/android/gms/internal/measurement/b5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/p5;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p5;

    if-nez v1, :cond_e

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/m5;->a:Lcom/google/android/gms/internal/measurement/b5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/measurement/q5;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/internal/measurement/l4;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/measurement/q5;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/a5;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/a5;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/e5;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/measurement/o5;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/o5;->d:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    const-string v4, "Protobuf runtime is not correctly loaded."

    if-eqz v3, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/o5;->a:Lcom/google/android/gms/internal/measurement/g5;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/measurement/q5;->d:Lcom/google/android/gms/internal/measurement/t5;

    sget-object v2, Lcom/google/android/gms/internal/measurement/g4;->a:Lcom/google/android/gms/internal/measurement/f4;

    new-instance v3, Lcom/google/android/gms/internal/measurement/i5;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/measurement/i5;-><init>(Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/g5;)V

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/q5;->b:Lcom/google/android/gms/internal/measurement/t5;

    sget-object v2, Lcom/google/android/gms/internal/measurement/g4;->b:Lcom/google/android/gms/internal/measurement/f4;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/google/android/gms/internal/measurement/i5;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/measurement/i5;-><init>(Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/g5;)V

    :goto_2
    move-object v1, v3

    goto :goto_8

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/o5;->b()I

    move-result v1

    if-ne v1, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    if-eqz v5, :cond_7

    sget v1, Lcom/google/android/gms/internal/measurement/k5;->a:I

    sget-object v1, Lcom/google/android/gms/internal/measurement/w4;->b:Lcom/google/android/gms/internal/measurement/v4;

    sget-object v2, Lcom/google/android/gms/internal/measurement/q5;->d:Lcom/google/android/gms/internal/measurement/t5;

    sget-object v4, Lcom/google/android/gms/internal/measurement/g4;->a:Lcom/google/android/gms/internal/measurement/f4;

    goto :goto_4

    :cond_7
    sget v1, Lcom/google/android/gms/internal/measurement/k5;->a:I

    sget-object v1, Lcom/google/android/gms/internal/measurement/w4;->b:Lcom/google/android/gms/internal/measurement/v4;

    sget-object v2, Lcom/google/android/gms/internal/measurement/q5;->d:Lcom/google/android/gms/internal/measurement/t5;

    move-object v4, v3

    :goto_4
    sget-object v5, Lcom/google/android/gms/internal/measurement/d5;->b:Lcom/google/android/gms/internal/measurement/c5;

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/o5;->b()I

    move-result v1

    if-ne v1, v5, :cond_9

    goto :goto_5

    :cond_9
    move v5, v6

    :goto_5
    if-eqz v5, :cond_b

    sget v1, Lcom/google/android/gms/internal/measurement/k5;->a:I

    sget-object v1, Lcom/google/android/gms/internal/measurement/w4;->a:Lcom/google/android/gms/internal/measurement/u4;

    sget-object v2, Lcom/google/android/gms/internal/measurement/q5;->b:Lcom/google/android/gms/internal/measurement/t5;

    sget-object v5, Lcom/google/android/gms/internal/measurement/g4;->b:Lcom/google/android/gms/internal/measurement/f4;

    if-eqz v5, :cond_a

    move-object v4, v5

    goto :goto_6

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    sget v1, Lcom/google/android/gms/internal/measurement/k5;->a:I

    sget-object v1, Lcom/google/android/gms/internal/measurement/w4;->a:Lcom/google/android/gms/internal/measurement/u4;

    sget-object v2, Lcom/google/android/gms/internal/measurement/q5;->c:Lcom/google/android/gms/internal/measurement/t5;

    move-object v4, v3

    :goto_6
    sget-object v5, Lcom/google/android/gms/internal/measurement/d5;->a:Lcom/google/android/gms/internal/measurement/c5;

    :goto_7
    sget-object v6, Lcom/google/android/gms/internal/measurement/h5;->l:[I

    instance-of v6, p0, Lcom/google/android/gms/internal/measurement/o5;

    if-eqz v6, :cond_d

    check-cast p0, Lcom/google/android/gms/internal/measurement/o5;

    invoke-static {p0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/h5;->z(Lcom/google/android/gms/internal/measurement/o5;Lcom/google/android/gms/internal/measurement/w4;Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/c5;)Lcom/google/android/gms/internal/measurement/h5;

    move-result-object p0

    move-object v1, p0

    :goto_8
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/p5;

    if-nez p0, :cond_c

    goto :goto_9

    :cond_c
    return-object p0

    :cond_d
    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_e
    :goto_9
    return-object v1

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
