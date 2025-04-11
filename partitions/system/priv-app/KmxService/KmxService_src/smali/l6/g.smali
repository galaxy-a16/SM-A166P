.class public final Ll6/g;
.super Lv7/d;
.source "SourceFile"


# instance fields
.field public final c:Le7/b;

.field public d:J

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Le7/b;)V
    .locals 0

    invoke-direct {p0}, Lv7/d;-><init>()V

    iput-object p1, p0, Ll6/g;->c:Le7/b;

    return-void
.end method


# virtual methods
.method public final d(Ll6/a;)Lv7/c;
    .locals 2

    iget-object v0, p0, Ll6/g;->c:Le7/b;

    iget-object v0, v0, Lu6/j;->b:Lu6/h;

    check-cast v0, Le7/a;

    iget-object v0, v0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p1, Ll6/a;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll6/g;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll6/g;->f:I

    iget v0, p1, Ll6/a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ll6/a;->m:I

    :cond_0
    new-instance v0, Lv7/c;

    invoke-direct {v0, p1}, Lv7/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lv7/w;->a(Ld/g0;)V

    return-object v0
.end method
