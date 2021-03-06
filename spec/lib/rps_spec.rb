# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RPS do
  it 'paper should win rock' do
    player1 = RPS.new('paper')
    player2 = RPS.new('rock')
    expect(player1.play(player2)).to eq(player1)
  end

  it 'rock should win scissors' do
    player1 = RPS.new('scissors')
    player2 = RPS.new('rock')
    expect(player1.play(player2)).to eq(player2)
  end

  it 'scirssors should win paper' do
    player1 = RPS.new('scissors')
    player2 = RPS.new('paper')
    expect(player1.play(player2)).to eq(player1)
  end

  it 'scirssors should win paper' do
    player1 = RPS.new('paper')
    player2 = RPS.new('scissors')
    expect(player1.play(player2)).to eq(player2)
  end

  it 'paper against paper' do
    player1 = RPS.new('paper')
    player2 = RPS.new('paper')
    expect(player1.play(player2)).to be_falsey
  end

  it 'rock against rock' do
    player1 = RPS.new('rock')
    player2 = RPS.new('rock')
    expect(player1.play(player2)).to be_falsey
  end

  it 'rock against invalid move' do
    player1 = RPS.new('rock')
    player2 = RPS.new('some string')
    expect(player1.play(player2)).to eq(:invalid_move)
  end

  it 'invalid_move against paper' do
    player1 = RPS.new('rock')
    player2 = RPS.new('some')
    expect(player1.play(player2)).to eq(:invalid_move)
  end

  it 'both invalid moves' do
    player1 = RPS.new('str')
    player2 = RPS.new('some')
    expect(player1.play(player2)).to eq(:invalid_move)
  end
end
