.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/media/WebVttParser$5;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .prologue
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 18
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const-string v12, "-->"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "arrowAt":I
    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v13}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    return-void

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .local v10, "start":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "^\\s+"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\s+"

    const-string v14, " "

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "rest":Ljava/lang/String;
    const/16 v12, 0x20

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .local v9, "spaceAt":I
    if-lez v9, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "end":Ljava/lang/String;
    :goto_0
    if-lez v9, :cond_3

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v10}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/media/TextTrackCue;->mEndTimeMs:J

    const-string v12, " +"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    array-length v15, v14

    move v13, v12

    :goto_2
    if-ge v13, v15, :cond_15

    aget-object v8, v14, v13

    .local v8, "setting":Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "colonAt":I
    if-lez v3, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v3, v12, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_2

    .end local v3    # "colonAt":I
    .end local v5    # "end":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    :cond_2
    move-object v5, v7

    .restart local v5    # "end":Ljava/lang/String;
    goto :goto_0

    :cond_3
    const-string v7, ""

    goto :goto_1

    .restart local v3    # "colonAt":I
    .restart local v8    # "setting":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "value":Ljava/lang/String;
    const-string v12, "region"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iput-object v11, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v12, "vertical"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "rl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0x65

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_3

    :cond_6
    const-string v12, "lr"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0x66

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v12, "line"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    :try_start_0
    sget-boolean v12, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    if-nez v12, :cond_a

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_9

    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_a

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    :cond_a
    :try_start_1
    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v12, Landroid/media/TextTrackCue;->mSnapToLines:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto/16 :goto_3

    :cond_b
    const-string v12, ".*[^0-9].*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "contains an invalid character"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v12, Landroid/media/TextTrackCue;->mSnapToLines:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_d
    const-string v12, "position"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string v12, "size"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v12, "align"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "start"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xc9

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    :cond_10
    const-string v12, "middle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xc8

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    :cond_11
    const-string v12, "end"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xca

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    :cond_12
    const-string v12, "left"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xcb

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    :cond_13
    const-string v12, "right"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const/16 v16, 0xcc

    move/from16 v0, v16

    iput v0, v12, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v16, "cue setting"

    const-string v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v3    # "colonAt":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "setting":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget-object v12, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget v12, v12, Landroid/media/TextTrackCue;->mSize:I

    const/16 v13, 0x64

    if-eq v12, v13, :cond_18

    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const-string v13, ""

    iput-object v13, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v13}, Landroid/media/WebVttParser;->-get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    return-void

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget v12, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v13, 0x64

    if-eq v12, v13, :cond_17

    goto :goto_5
.end method
