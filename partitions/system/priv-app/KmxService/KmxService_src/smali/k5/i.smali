.class public final Lk5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J

.field public static final c:Ljava/util/regex/Pattern;

.field public static d:Lk5/i;


# instance fields
.field public final a:Lm1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lk5/i;->b:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk5/i;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lm1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/i;->a:Lm1/e;

    return-void
.end method

.method public static a()Lk5/i;
    .locals 2

    sget-object v0, Lm1/e;->b:Lm1/e;

    if-nez v0, :cond_0

    new-instance v0, Lm1/e;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lm1/e;-><init>(I)V

    sput-object v0, Lm1/e;->b:Lm1/e;

    :cond_0
    sget-object v0, Lm1/e;->b:Lm1/e;

    sget-object v1, Lk5/i;->d:Lk5/i;

    if-nez v1, :cond_1

    new-instance v1, Lk5/i;

    invoke-direct {v1, v0}, Lk5/i;-><init>(Lm1/e;)V

    sput-object v1, Lk5/i;->d:Lk5/i;

    :cond_1
    sget-object v0, Lk5/i;->d:Lk5/i;

    return-object v0
.end method


# virtual methods
.method public final b(Ll5/a;)Z
    .locals 6

    iget-object v0, p1, Ll5/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p1, Ll5/a;->f:J

    iget-wide v4, p1, Ll5/a;->e:J

    add-long/2addr v2, v4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lk5/i;->a:Lm1/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    sget-wide v4, Lk5/i;->b:J

    add-long/2addr p0, v4

    cmp-long p0, v2, p0

    if-gez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
